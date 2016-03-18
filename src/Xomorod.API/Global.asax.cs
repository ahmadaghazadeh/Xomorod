using System;
using System.IO;
using System.Threading.Tasks;
using System.Web;
using System.Web.Caching;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using AdoManager;
using Xomorod.API.Providers.ErrorControlSystem;
using Xomorod.Helper;

namespace Xomorod.API
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Set Database Connection from [Web.config]
            var data = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "Web.config");
            ConnectionManager.LoadFromXml(data);
#if DEBUG
            ConnectionManager.SetToDefaultConnection("Xomorod"); // local
#else
            ConnectionManager.SetToDefaultConnection("XomorodServerSide"); // server
#endif

            Error += Application_Error;

            // Read site ranking
            AddTask("ReadAlexa", 3600 * 4); // every 4h
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

            // Get the exception object.
            Exception exc = Server.GetLastError();

            if (exc == null)
                return;

            // Handle HTTP errors
            if (exc.GetType() == typeof(HttpException))
            {
                // The Complete Error Handling Example generates
                // some errors using URLs with "NoCatch" in them;
                // ignore these here to simulate what would happen
                // if a global.asax handler were not implemented.
                if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
                    return;

                //Redirect HTTP errors to HttpError page
                //Server.Transfer("~/Views/Errors");
                Response.Redirect("~/errors");
                return;
            }

            exc.RaiseError("Xomorod.API");

            // Clear the error from the server
            Server.ClearError();

            // Redirect to a landing page
            Response.Redirect("~/home");
        }

        static async Task ReadWebSiteRanking()
        {
            try
            {
                using (var alexa = new Alexa("xomorod.com"))
                {
                    await AdoManager.DataAccessObject.GetFromQueryAsync($"EXEC sp_TrafficRankings_Insert @GlobalRank = {alexa.GetGlobalRanking()}, @IranRank = {alexa.GetLocalRanking()}");
                }
            }
            catch (Exception ex)
            {
                await ex.RaiseErrorAsync("API.Xomorod.com");
            }
        }


        #region Backgroud Schedule Task

        private static CacheItemRemovedCallback _onCacheRemove = null;
        private void AddTask(string name, int seconds)
        {
            _onCacheRemove = new CacheItemRemovedCallback(CacheItemRemoved);
            HttpRuntime.Cache.Insert(name, seconds, null,
                DateTime.Now.AddSeconds(seconds), Cache.NoSlidingExpiration,
                CacheItemPriority.NotRemovable, _onCacheRemove);
        }

        public async void CacheItemRemoved(string key, object value, CacheItemRemovedReason r)
        {
            // re-add our task so it recurs
            AddTask(key, Convert.ToInt32(value));

            // do stuff here if it matches our taskname, like WebRequest
            await ReadWebSiteRanking();
        }

        #endregion
    }
}

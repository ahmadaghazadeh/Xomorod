using System;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace Xomorod
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            Error += Application_Error;
            GlobalConfiguration.Configure(WebApiConfig.Register);

            // https://msdn.microsoft.com/en-us/library/dd329551.aspx
            RegisterRoutes(RouteTable.Routes);
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

            // Get the exception object.
            Exception exc = Server.GetLastError();

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
                Server.Transfer("Default.aspx");
            }

            // For other kinds of errors give the user some information
            // but stay on the default page
            Response.Write("<h2>Global Page Error</h2>\n");
            Response.Write(
                "<p>" + exc.Message + "</p>\n");
            Response.Write("Return to the <a href='Default.aspx'>" +
                "Default Page</a>\n");

            // Log the exception and notify system operators
            //ExceptionUtility.LogException(exc, "DefaultPage");
            //ExceptionUtility.NotifySystemOps(exc);

            // Clear the error from the server
            Server.ClearError();
        }


        public static void RegisterRoutes(RouteCollection routes)
        {
            // ignore
            // The following code shows how to prevent routing from handling requests for .axd requests.
            routes.Add(new System.Web.Routing.Route("{resource}.axd/{*pathInfo}",
                new System.Web.Routing.StopRoutingHandler()));

            // localization routes e.g:  http://Xomorod.com/en/
            routes.MapPageRoute("localRoutes",
                "{local}/{*extrainfo}",
                "~/default.aspx", true,
                new RouteValueDictionary
                {
                    {"local", "en"},
                },
                new RouteValueDictionary
                {
                    {"local", "[a-z]{2}"},
                });

            // localization routes e.g:  http://Xomorod.com/
            routes.MapPageRoute("HomeRoutes",
                "",
                "~/default.aspx", true);


            // catch all route
            routes.MapPageRoute(
                "All Pages",
                "{*RequestedPage}",
                "~/ErrorPages/404.aspx",
                true,
                new System.Web.Routing.RouteValueDictionary { { "RequestedPage", "home" } }
                );

        }
    }
}

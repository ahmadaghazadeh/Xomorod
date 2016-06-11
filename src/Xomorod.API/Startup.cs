using AdoManager;
using Hangfire;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Owin;
using Xomorod.API.Providers;

[assembly: OwinStartup(typeof(Xomorod.API.Startup))]
namespace Xomorod.API
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);

            SetHangfireBackgroundJobs(app);

            SetSchaduleJobs();
        }

        private void SetHangfireBackgroundJobs(IAppBuilder app)
        {
            GlobalConfiguration.Configuration.UseSqlServerStorage(
                ConnectionManager.GetDefaultConnection().ConnectionString);

            app.UseHangfireServer();
            app.UseCookieAuthentication(new CookieAuthenticationOptions() { AuthenticationMode = AuthenticationMode.Active }); // Authentication - first
            var opt = new DashboardOptions
            {
                AuthorizationFilters = new[] { new HangfireRestrictiveAuthorizationFilter() },
                AppPath = "http://xomorod.com"
            };
            app.UseHangfireDashboard("/BackgroundJobs", opt);
        }

        private void SetSchaduleJobs()
        {
            RecurringJob.AddOrUpdate(() => RankingWriter.ReadWebSiteRanking(), Cron.Hourly); 
        }
    }
}

using System.Web.Optimization;

namespace Xomorod.com
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            RegisterScriptBundles(bundles);
            RegisterStyleBundles(bundles);

            BundleTable.EnableOptimizations = true;
        }

        private static void RegisterStyleBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/Homemade_Apple",
                @"//fonts.googleapis.com/css?family=Lato%3A300%2C400%2C700%2C400italic%7CMontserrat%3A700%7CHomemade+Apple").Include(
                "~/Content/Homemade_Apple.css"));

            bundles.Add(new StyleBundle("~/Content/OpenSans",
                @"//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C300italic%2C400italic%2C600italic%2C600%2C700%2C700italic%2C800%2C800italic").Include(
                "~/Content/OpenSans.css"));

            bundles.Add(new StyleBundle("~/Content/bootstrap", @"http://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css").Include("~/Content/bootstrap.min.css"));
            bundles.Add(new StyleBundle("~/Content/blog").Include("~/Content/select2.css"));
            bundles.Add(new StyleBundle("~/Content/front").Include("~/Content/front.css"));
            bundles.Add(new StyleBundle("~/Content/font-awesome", "https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css").Include("~/Content/font-awesome.min.css"));
            bundles.Add(new StyleBundle("~/Content/style").Include("~/Content/style.css"));
            bundles.Add(new StyleBundle("~/Content/scrollTop").Include("~/Content/scrollTop.css"));
            bundles.Add(new StyleBundle("~/Content/ie").Include("~/Content/ie.css"));
            bundles.Add(new StyleBundle("~/Content/layoutStyle").Include("~/Content/layoutStyle.css"));
            bundles.Add(new StyleBundle("~/Content/errors").Include("~/Content/errors.css"));
        }

        private static void RegisterScriptBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/jquery-migrate.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/recaptcha").Include("~/Scripts/recaptcha.js"));
            bundles.Add(new ScriptBundle("~/bundles/scripts-general").Include("~/Scripts/scripts-general.js"));
            bundles.Add(new ScriptBundle("~/bundles/blog").Include("~/Scripts/select2.js"));

            bundles.Add(new ScriptBundle("~/bundles/jquery-blockUI").Include("~/Scripts/jquery.blockUI.min.js"));
            bundles.Add(new ScriptBundle("~/bundles/jquery-cookie").Include("~/Scripts/jquery.cookie.min.js"));
            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                                      "~/Scripts/bootstrap.min.js",
                                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/jquery-knob").Include("~/Scripts/jquery.knob.min.js"));
            bundles.Add(new ScriptBundle("~/bundles/scrollReveal").Include("~/Scripts/scrollReveal.min.js"));
            bundles.Add(new ScriptBundle("~/bundles/zerif").Include("~/Scripts/zerif.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include("~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include("~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/recaptchaApi", "https://www.google.com/recaptcha/api.js").Include("~/Scripts/api.js"));
            bundles.Add(new ScriptBundle("~/bundles/highstock", "https://code.highcharts.com/stock/highstock.js").Include("~/Scripts/highstock.js"));
            bundles.Add(new ScriptBundle("~/bundles/exporting", "https://code.highcharts.com/stock/modules/exporting.js").Include("~/Scripts/exporting.js"));
            bundles.Add(new ScriptBundle("~/bundles/ScrollTop").Include("~/Scripts/ScrollTop.js"));
            bundles.Add(new ScriptBundle("~/bundles/SmoothScroll").Include("~/Scripts/smoothscroll.js"));
            bundles.Add(new ScriptBundle("~/bundles/html5").Include("~/Scripts/html5.js"));
            bundles.Add(new ScriptBundle("~/bundles/clipboard", "https://cdn.jsdelivr.net/clipboard.js/1.5.10/clipboard.min.js").Include("~/Scripts/clipboard.min.js"));
        }
    }
}

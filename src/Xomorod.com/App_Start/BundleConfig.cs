using System.Web;
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
            bundles.Add(new StyleBundle("~/Content/font").Include("~/Content/front.css"));

            bundles.Add(new StyleBundle("~/Content/Homemade_Apple",
                @"//fonts.googleapis.com/css?family=Lato%3A300%2C400%2C700%2C400italic%7CMontserrat%3A700%7CHomemade+Apple").Include(
                "~/Content/Homemade_Apple.css"));

            bundles.Add(new StyleBundle("~/Content/OpenSans",
                @"//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C300italic%2C400italic%2C600italic%2C600%2C700%2C700italic%2C800%2C800italic").Include(
                "~/Content/OpenSans.css"));


            //bundles.Add(new StyleBundle("~/Content/woocommerce").Include(
            //          "~/Content/woocommerce-layout.css",
            //          "~/Content/woocommerce-smallscreen.css",
            //          "~/Content/woocommerce.css"));


            bundles.Add(new StyleBundle("~/Content/bootstrap", @"http://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css").Include(
                      "~/Content/bootstrap.min.css"));

            bundles.Add(new StyleBundle("~/Content/font_awesome").Include("~/Content/font-awesome.min.cs"));

            bundles.Add(new StyleBundle("~/Content/style").Include("~/Content/style.cs"));

            bundles.Add(new StyleBundle("~/Content/blog").Include("~/Content/select2.css"));

            bundles.Add(new StyleBundle("~/Content/mainLayoutT").Include(
                      "~/Content/front.css",
                      "~/Content/bootstrap.min.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/style.css"));

            bundles.Add(new StyleBundle("~/Content/toTop").Include("~/Content/ToTop.css"));
        }

        private static void RegisterScriptBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/mainLayoutT").Include(
                        "~/Scripts/jquery.js",
                        "~/Scripts/jquery-migrate.min.js",
                        "~/Scripts/scripts.js",
                        "~/Scripts/scripts-general.js"));

            bundles.Add(new ScriptBundle("~/bundles/blog").Include(
                        "~/Scripts/select2.js"));

            bundles.Add(new ScriptBundle("~/bundles/mainLayoutB").Include(
                        "~/Scripts/jquery.blockUI.min.js",
                        //"~/Scripts/woocommerce.min.js",
                        "~/Scripts/jquery.cookie.min.js",
                        "~/Scripts/bootstrap.min.js",
                        "~/Scripts/jquery.knob.min.js",
                        "~/Scripts/scrollReveal.min.js",
                        //"~/Scripts/parallax.js",
                        "~/Scripts/zerif.js"
                        //"~/Scripts/wp-embed.min.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include("~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap", "//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/recaptcha", "https://www.google.com/recaptcha/api.js").Include("~/Scripts/api.js"));

            bundles.Add(new ScriptBundle("~/bundles/highstock", "https://code.highcharts.com/stock/highstock.js").Include(
                "~/Scripts/highstock.js"));

            bundles.Add(new ScriptBundle("~/bundles/exporting", "https://code.highcharts.com/stock/modules/exporting.js").Include(
                "~/Scripts/exporting.js"));


            bundles.Add(new ScriptBundle("~/bundles/loadedMainLayout").Include("~/Scripts/loadedMainLayout.js"));
        }
    }
}

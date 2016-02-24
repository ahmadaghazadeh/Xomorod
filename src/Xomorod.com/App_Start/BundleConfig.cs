using System.Web;
using System.Web.Optimization;

namespace Xomorod.com
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/mainLayoutTop").Include(
                        "~/Scripts/jquery.js",
                        "~/Scripts/jquery-migrate.min.js",
                        "~/Scripts/scripts.js",
                        "~/Scripts/scripts-general.js"));

            bundles.Add(new ScriptBundle("~/bundles/blog").Include(
                        "~/Scripts/select2.js"));

            bundles.Add(new StyleBundle("~/Content/blog").Include(
                        "~/Content/select2.css"));

            bundles.Add(new StyleBundle("~/Content/mainLayoutTop").Include(
                      "~/Content/front.css",
                      "~/Content/woocommerce-layout.css",
                      "~/Content/woocommerce-smallscreen.css",
                      "~/Content/woocommerce.css",
                      "~/Content/bootstrap.min.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/style.css"));

            bundles.Add(new ScriptBundle("~/bundles/mainLayoutBottom").Include(
                        "~/Scripts/jquery.blockUI.min.js",
                        "~/Scripts/woocommerce.min.js",
                        "~/Scripts/jquery.cookie.min.js",
                        "~/Scripts/bootstrap.min.js",
                        "~/Scripts/jquery.knob.min.js",
                        "~/Scripts/scrollReveal.min.js",
                        "~/Scripts/parallax.js",
                        "~/Scripts/zerif.js",
                        "~/Scripts/wp-embed.min.js"));

            //bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
            //            "~/Scripts/jquery-{version}.js"));

            //bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            //            "~/Scripts/jquery.validate*"));

            //// Use the development version of Modernizr to develop with and learn from. Then, when you're
            //// ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            //bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //            "~/Scripts/modernizr-*"));

            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js",
            //          "~/Scripts/respond.js"));

            //bundles.Add(new StyleBundle("~/Content/css").Include(
            //          "~/Content/bootstrap.css",
            //          "~/Content/site.css"));


        }
    }
}

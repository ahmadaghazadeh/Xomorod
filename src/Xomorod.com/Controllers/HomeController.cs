using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Xomorod.com.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            // helpfull link: http://demo.themeisle.com/zerif-pro/
            ViewBag.BodyClass = "custom-background";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Blog()
        {
            ViewBag.Message = "Your blog page.";

            return View();
        }
    }
}
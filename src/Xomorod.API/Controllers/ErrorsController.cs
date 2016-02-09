using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Xomorod.API.Controllers
{
    public class ErrorsController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Xomorod: Error";

            return View();
        }

        public ActionResult err404()
        {
            ViewBag.Title = "Xomorod: Error 404";

            return View();
        }
    }
}

using System;
using System.Web.Mvc;

namespace Xomorod.com.Controllers
{
    [AllowAnonymous]
    public class ErrorsController : Controller
    {
        // GET: Errors
        public ActionResult Index()
        {
            return View("Index");
        }

        public ActionResult NotFound()
        {
            return View("NotFound");
        }
    }
}

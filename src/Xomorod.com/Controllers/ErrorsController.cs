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

        public ViewResult NotFound()
        {
            Response.StatusCode = 404;  //you may want to set this to 200
            return View("NotFound");
        }
    }
}

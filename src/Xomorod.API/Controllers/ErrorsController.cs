using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Results;
using System.Web.Mvc;
using AdoManager;
using Xomorod.API.Models;
using Xomorod.API.Providers;
using Xomorod.API.Providers.ErrorControlSystem;

namespace Xomorod.API.Controllers
{
    [System.Web.Http.RoutePrefix("api/Errors")]
    public class ErrorsController : Controller
    {


        /// <summary>
        /// Default Error: HTTP Error 404
        /// </summary>
        /// <returns>A designed html page for error 404 Page Not Found</returns>
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

        /// <summary>
        /// Send an error to send host mail
        /// </summary>
        /// <param name="value">Error Model Object</param>
        public async Task<HttpStatusCodeResult> Post([FromBody]Error value)
        {
            try
            {
                await value.RaiseErrorAsync();
            }
            catch (Exception)
            {
                return new HttpStatusCodeResult(HttpStatusCode.ExpectationFailed);
            }

            return new HttpStatusCodeResult(HttpStatusCode.Created);
        }


    }
}

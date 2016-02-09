using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using AdoManager;
using Xomorod.API.Models;
using Xomorod.API.Providers;

namespace Xomorod.API.Controllers
{
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
        public void Post([FromBody]Error value)
        {
            value.RaiseError();
        }

        
    }
}

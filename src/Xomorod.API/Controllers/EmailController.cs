using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Xomorod.API.Models;

namespace Xomorod.API.Controllers
{

    public class EmailController : Controller
    {
        [HttpPost]
        public ActionResult ErrorMail(ErrorModel model)
        {
            //ErrorModel model = (ErrorModel)ViewData.Model;

            ViewBag.Title = "Bug Tracker";
            ViewBag.AppName = model.AppName;
            ViewBag.Version = model.Version;
            ViewBag.Message = model.Message;
            ViewBag.ErrorType = model.ErrorType;
            ViewBag.ModuleName = model.ModuleName;
            ViewBag.Method = model.Method;
            ViewBag.StackTrace = model.StackTrace;
            ViewBag.Line = model.Line;
            ViewBag.Column = model.Column;
            ViewBag.AppIconUrl = model.HeaderIcon;
            ViewBag.ExtraData = model.ExtraData;
            ViewBag.DateTime = DateTime.Now.ToString(CultureInfo.InvariantCulture);

            return View(model);
        }
    }
}
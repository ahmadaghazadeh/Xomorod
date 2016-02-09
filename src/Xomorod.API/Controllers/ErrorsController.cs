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


        // POST: api/RaiseError
        public void Post([FromBody]Error value)
        {
            RaiseError(value);
        }

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex"></param>
        protected void RaiseError(Error ex)
        {
            var mailPass = DataAccessObject.ExecuteScalar<string>(@"SELECT Xomorod.dbo.GetSettingByKey('xomorod.co@gmail.com_pass')");

            
            var mail = new MailMessage { From = new MailAddress("xomorod.bugs@gmail.com") };
            mail.To.Add(new MailAddress("xomorod.co@gmail.com"));
            mail.Subject = $"{ex.AppName} Error at {DateTime.Now} (auto-sys)";
            mail.Body = "Error Description: " + ex.Message;
            var server = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("xomorod.bugs@gmail.com", mailPass)
            };
            server.Send(mail);
        }
    }
}

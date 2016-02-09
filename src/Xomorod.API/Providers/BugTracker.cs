using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using AdoManager;
using Xomorod.API.Models;

namespace Xomorod.API.Providers
{
    public static class BugTracker
    {
        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        public static void RaiseError(this Error ex)
        {
            var mailPass = @"H\,g,d@13";//DataAccessObject.ExecuteScalar<string>(@"SELECT Xomorod.dbo.GetSettingByKey('xomorod.co@gmail.com_pass')");


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

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        /// <param name="appName">Application Name</param>
        public static void RaiseError(this Exception ex, string appName = null)
        {
            var err = new Error()
            {
                AppName = appName ?? "Xomorod.API",
                ErrorType = ex.GetType().ToString(),
                Message = ex.Message,
                ExtraData = ex.Data.Count > 0 ? ex.Data[0].ToString() : null,
                Version = typeof (BugTracker).Assembly.GetName().Version.ToString()
            };

            err.RaiseError();
        }
    }
}

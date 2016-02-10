using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
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
        public static async Task RaiseError(this Error ex)
        {
            try
            {
                var bugTrackerAddress = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT Xomorod.dbo.GetSettingByKey('BugTrackerAddress')");
                var bugTrackerServicePass = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT Xomorod.dbo.GetSettingByKey('BugTrackerServicePassword')");
                var bugTrackerServiceAddress = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT Xomorod.dbo.GetSettingByKey('BugTrackerServiceAddress')");
                var date = DateTime.Now.ToString(CultureInfo.InvariantCulture);
                var imgSrc = string.IsNullOrEmpty(ex.HeaderIcon)
                    ? "http://xomorod.com/images/favicon.jpg"
                    : ex.HeaderIcon;

                // Construct the alternate body as HTML.
                var extraData = string.IsNullOrEmpty(ex.ExtraData) ? null : $@"<tr><td style='font-weight:bold;padding-right:13px;'>In Additional:</td><td>{ex.ExtraData}</td></tr>";


                //Partial template
                string body = $@"<body style='background-color: #ffcc66;'><div >
                                    <table>
                                        <tr><td><img style='width: 50px;height: 50px;padding-right: 22px;' src='{imgSrc}' alt='{ex.AppName}'/></td><td><h2>{ex.AppName}&nbsp;&nbsp;v{ex.Version}</h2></td></tr>
                                    </table>                                    
                                    <table style='border-collapse:collapse;font:13px Arial, Helvetica, sans-serif;'>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr><td style='font-weight:bold;padding-right:13px;'>Error Type:</td><td>{ex.ErrorType }</td></tr>                                  
                                        <tr><td style='font-weight:bold;padding-right:13px;'>Error:</td><td>{ ex.Message }</td></tr>
                                        <tr><td></td></tr>       
                                        {extraData}
                                    </table>
                                    <br/>
                                    <br/><br/>
                                    <h6>Sent from <a href='http://api.xomorod.com/'>Xomorod API</a>&nbsp;&nbsp;at&nbsp;{date}</h6>
                                 </div></body>";

                var mail = new MailMessage
                {
                    From = new MailAddress(bugTrackerServiceAddress),
                    Subject = $"{ex.AppName} v{ex.Version} at {date}",
                    Body = body,
                    To = { new MailAddress(bugTrackerAddress) }, //mail.To.Add(new MailAddress(bugTrackerAddress));
                    IsBodyHtml = true
                };


                var server = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(bugTrackerServiceAddress, bugTrackerServicePass)
                };

                await server.SendMailAsync(mail);
            }
            catch (Exception)
            {
                //TODO store in local DB
            }
        }

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        /// <param name="appName">Application Name</param>
        public static async void RaiseError(this Exception ex, string appName = null)
        {
            var err = new Error()
            {
                AppName = appName ?? "Xomorod.API",
                ErrorType = ex.GetType().ToString(),
                Message = ex.Message,
                ExtraData = ex.Data.Count > 0 ? ex.Data[0].ToString() : null,
                Version = typeof(BugTracker).Assembly.GetName().Version.ToString()
            };

            await err.RaiseError();
        }
    }
}

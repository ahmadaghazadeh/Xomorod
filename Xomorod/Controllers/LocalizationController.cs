using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Xomorod.Controllers
{
    [RoutePrefix("api/localization")]
    public class LocalizationController : ApiController
    {
        // GET api/localization
        public IHttpActionResult Get()
        {
            return Get("en-US");
        }

        // GET api/localization/fa-IR
        public IHttpActionResult Get(string id)
        {
            var cultureInfo = CultureInfo.GetCultureInfo(id);

            dynamic fBody = new ExpandoObject();

            fBody.Title = Properties.localization.ResourceManager.GetString("Title", cultureInfo);
            fBody.About = Properties.localization.ResourceManager.GetString("About", cultureInfo);
            fBody.Portfolio = Properties.localization.ResourceManager.GetString("Portfolio", cultureInfo);
            fBody.Services = Properties.localization.ResourceManager.GetString("Services", cultureInfo);
            fBody.TileParagraph = Properties.localization.ResourceManager.GetString("TileParagraph", cultureInfo);
            fBody.Contact = Properties.localization.ResourceManager.GetString("Contact", cultureInfo);


            return Ok(fBody);
        }
    }
}
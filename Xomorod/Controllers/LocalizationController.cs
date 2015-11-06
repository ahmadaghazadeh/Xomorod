using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Reflection;
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
            var dynamicFBody = (IDictionary<string, object>) fBody;

            var localizeType = typeof(Properties.localization);
            foreach (var prop in localizeType.GetProperties(BindingFlags.Static | BindingFlags.NonPublic).Where(x => x.PropertyType == typeof(string)))
            {
                dynamicFBody.Add(prop.Name, Properties.localization.ResourceManager.GetString(prop.Name, cultureInfo));
            }

            //TODO change below code by Authotication systems
            fBody.SignState = Properties.localization.ResourceManager.GetString("SignIn", cultureInfo);

            return Ok(fBody);
        }
    }
}
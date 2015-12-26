using Newtonsoft.Json.Linq;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Web.Http;

namespace Xomorod.Controllers
{
    public class TranslationsController : ApiController
    {
        protected static Dictionary<string, JObject> Localizations;

        static TranslationsController()
        {
            Localizations = new Dictionary<string, JObject>();
        }

        // GET domain/api/translations/
        public IHttpActionResult Get()
        {
            return Get(new { pageName = "default", lang = "en" });
        }

        // GET domain/api/translations?lang=en
        public IHttpActionResult Get(string lang)
        {
            return Get(new { pageName = "default", lang = lang });
        }

        // GET domain/api/translations/[pageName]/?lang=en
        [Route("api/Translations/{pageName}")]
        public IHttpActionResult Get(string pageName, string lang)
        {
            return Get(new { pageName, lang });
        }

        // GET domain/api/translations?pageName=login&lang=en
        public IHttpActionResult Get([FromUri] dynamic query)
        {
            string lang = query.lang;
            string pageName = query.pageName;

            string key = pageName + lang;
            if (Localizations.ContainsKey(key))
            {
                return Ok(Localizations[key]);
            }

            var resourceObject = new JObject();

            var resourceSet = GetResourceController(pageName, lang);
            IDictionaryEnumerator enumerator = resourceSet.GetEnumerator();
            while (enumerator.MoveNext())
            {
                resourceObject.Add(enumerator.Key.ToString(), enumerator.Value.ToString());
            }

            Localizations[key] = resourceObject;

            return Ok(resourceObject);
        }

        private System.Resources.ResourceSet GetResourceController(string name, string lang)
        {
            switch (name)
            {
                case "login": return Resources.login_Localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
                default: return Resources.localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
            }
        }
    }
}
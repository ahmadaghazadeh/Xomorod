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

        // GET domain/api/translations
        public IHttpActionResult Get()
        {
            return Get("en");
        }

        // GET domain/api/translations?lang=en
        public IHttpActionResult Get(string lang)
        {
            if (Localizations.ContainsKey(lang))
            {
                return Ok(Localizations[lang]);
            }

            var resourceObject = new JObject();

            var resourceSet = Resources.localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
            IDictionaryEnumerator enumerator = resourceSet.GetEnumerator();
            while (enumerator.MoveNext())
            {
                resourceObject.Add(enumerator.Key.ToString(), enumerator.Value.ToString());
            }

            Localizations[lang] = resourceObject;

            return Ok(resourceObject);
        }
    }
}
using Newtonsoft.Json.Linq;
using System.Collections;
using System.Globalization;
using System.Web.Http;

namespace Xomorod.Controllers
{
    public class TranslationsController : ApiController
    {
        // GET domain/api/translations
        public IHttpActionResult Get()
        {
            return Get("en");
        }

        // GET domain/api/translations?lang=en
        public IHttpActionResult Get(string lang)
        {
            var resourceObject = new JObject();

            var resourceSet = Resources.localization.ResourceManager.GetResourceSet(new CultureInfo(lang), true, true);
            IDictionaryEnumerator enumerator = resourceSet.GetEnumerator();
            while (enumerator.MoveNext())
            {
                resourceObject.Add(enumerator.Key.ToString(), enumerator.Value.ToString());
            }

            return Ok(resourceObject);
        }
    }
}
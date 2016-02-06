using System.Threading.Tasks;
using System.Web.Http;
using AdoManager;
using Xomorod.News.Core;
using Xomorod.News.Core.Security;

namespace Xomorod.News.Controllers
{
    public class DynamicsController : ApiController
    {
        // GET domain/api/news/dynamics
        // Restrict by role:
        [ApiAuthorize(Roles = "Administrators")]
        [Route("api/dynamics")]
        public async Task<IHttpActionResult> GetDynamics()
        {
            var queryParams = this.Request.GetQueryStrings();

            var query = queryParams["query"] ?? "";

            var results = await DataAccessObject.GetFromQueryAsync(query);

            return Ok(results);
        }

        // GET domain/api/actions
        // Restrict by role:
        [ApiAuthorize(Roles = "Administrators")]
        [Route("api/actions")]
        public async Task<IHttpActionResult> GetActions()
        {
            var results = await DataAccessObject.GetFromAsync("udft_ApiActions()");

            return Ok(results);
        }
    }
}
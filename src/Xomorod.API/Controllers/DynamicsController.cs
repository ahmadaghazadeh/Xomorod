﻿using System.Threading.Tasks;
using System.Web.Http;
using AdoManager;
using Xomorod.API.Providers;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Run any query in Xomorod database by ?query param
    /// </summary>
    public class DynamicsController : ApiController
    {
        /// <summary>
        /// Get async data by dynamic query.
        /// Restrict by role: Administrators
        /// 
        /// GET api.xomorod.com/dynamics
        /// </summary>
        /// <returns>dynamic query results as <see cref="IEnumerable{dynamic}"/></returns>
        [ApiAuthorize(Roles = "Administrators")]
        [Route("dynamics")]
        public async Task<IHttpActionResult> GetDynamics()
        {
            var queryParams = this.Request.GetQueryStrings();

            var query = queryParams["query"] ?? "";

            var results = await DataAccessObject.GetFromQueryAsync(query);

            return Ok(results);
        }
    }
}
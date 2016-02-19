using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using AdoManager;
using Xomorod.API.Providers;
using Xomorod.API.Providers.ErrorControlSystem;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Categories Web API
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CategoriesController : ApiController
    {
        /// <summary>
        /// Get all active Categories
        /// </summary>
        /// <returns>categories results as <see cref="IEnumerable{dynamic}"/></returns>
        [Route("Categories")]
        public async Task<IHttpActionResult> Get()
        {
            try
            {
                var results = await DataAccessObject.GetFromAsync("udft_Categories(1)", true);

                return Ok(results);
            }
            catch (Exception ex)
            {
                await ex.RaiseErrorAsync("Xomorod.API");
                return BadRequest(ex.Message);
            }
        }


        ///// <summary>
        ///// Get async data by dynamic query.
        ///// Restrict by role: Administrators
        ///// 
        ///// GET api.xomorod.com/dynamics
        ///// </summary>
        ///// <returns>dynamic query results as <see cref="IEnumerable{dynamic}"/></returns>
        //[ApiAuthorize(Roles = "Administrators")]
        //[Route("dynamics")]
        //public async Task<IHttpActionResult> GetDynamics()
        //{
        //    var queryParams = this.Request.GetQueryStrings();

        //    var query = queryParams["query"] ?? "";

        //    var results = await DataAccessObject.GetFromQueryAsync(query);

        //    return Ok(results);
        //}
    }
}
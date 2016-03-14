using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using AdoManager;
using Xomorod.Helper;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Xomorod Products Controller
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class AlexaController : ApiController
    {
        [System.Web.Http.Route("Alexa")]
        public async Task<IHttpActionResult> Get()
        {
            var result = await AdoManager.DataAccessObject.GetFromAsync("udft_TrafficRankings()");
            return Ok(result);
        }

        //// GET api/<controller>/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        //// POST api/<controller>
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/<controller>/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/<controller>/5
        //public void Delete(int id)
        //{
        //}
    }
}
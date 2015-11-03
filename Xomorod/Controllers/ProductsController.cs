using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using Xomorod.Core;
using Xomorod.Models;

namespace Xomorod.Controllers
{
    [RoutePrefix("api/products")]
    public class ProductsController : ApiController
    {
        public static List<Portfolio> Portfolios = new List<Portfolio>();

        // GET api/products
        public async Task<IHttpActionResult> Get()
        {
            //https://api.github.com/users/behzadkhosravifar/repos

            if (Portfolios.Any()) return Ok(Portfolios);
            
            Portfolios = new XomorodDataContext(DatabaseHelper.ConnectionString).Portfolios.ToList();

            return Ok(Portfolios);
        }

        // GET api/products/5
        public string Get(int id)
        {
            return "value";
        }

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
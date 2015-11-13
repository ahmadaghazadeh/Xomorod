using System;
using System.Collections.Generic;
using System.Dynamic;
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
        public XomorodDataContext OrmDataContext = new XomorodDataContext(DatabaseHelper.ConnectionString);
        public static List<object> Portfolios = new List<object>();

        // GET api/products
        public async Task<IHttpActionResult> Get()
        {
            //https://api.github.com/users/behzadkhosravifar/repos

            if (Portfolios.Any()) return Ok(Portfolios);

            var products = OrmDataContext.Portfolios.ToList();
            foreach (var prod in products)
            {
                dynamic portfolio = new ExpandoObject();

                portfolio.ProjectName = prod.ProjectName;
                portfolio.Id = prod.Id;
                portfolio.Image = prod.Resource.ImageResource;
                portfolio.ContentType = prod.Resource.ContentType;
                portfolio.Category = string.Join(" + ", prod.PortfolioCategories.Select(x => x.Category.Name));
                portfolio.ProjectUrl = prod.ExtraLinks.First((x => x.LinkName.ToLower() == "github"))?.Link;
                portfolio.OpenSource = portfolio.ProjectUrl != null;
                portfolio.Description = prod.Summary;

                Portfolios.Add(portfolio);
            }


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
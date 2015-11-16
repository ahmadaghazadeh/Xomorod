﻿using System;
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
        
        // GET api/products
        public async Task<IHttpActionResult> Get()
        {
            //https://api.github.com/users/behzadkhosravifar/repos

            var portfolios = new List<object>();

            if (portfolios.Any()) return Ok(portfolios);

            var products = OrmDataContext.Portfolios.ToList().OrderByDescending(x => x.Rank);
            foreach (var prod in products)
            {
                dynamic portfolio = new ExpandoObject();

                portfolio.ProjectName = prod.ProjectName;
                portfolio.Id = prod.Id;
                portfolio.ImageLink = prod.Resource.ResourceLink;
                portfolio.Category = string.Join(" + ", prod.PortfolioCategories.Select(x => x.Category.Name));
                portfolio.ProjectUrl = prod.ExtraLinks.First((x => x.Name.ToLower() == "github"))?.Link;
                portfolio.OpenSource = portfolio.ProjectUrl != null;
                portfolio.Description = prod.Summary;

                portfolios.Add(portfolio);
            }


            return Ok(portfolios);
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
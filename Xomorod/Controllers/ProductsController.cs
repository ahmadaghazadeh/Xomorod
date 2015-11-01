using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Xomorod.Models;

namespace Xomorod.Controllers
{
    [RoutePrefix("api/products")]
    public class ProductsController : ApiController
    {
        // GET api/products
        public IHttpActionResult Get()
        {
            var portfolios = new List<Portfolio>();

            portfolios.AddRange(new[]
            {
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/1.jpg",
                    Category = "Web Applications",
                    ProjectName = "Xomorod",
                    ProjectUrl = "#"
                },
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/2.jpg",
                    Category = "Win32 Applications",
                    ProjectName = "Make Class Schedule",
                    ProjectUrl = "#"
                },
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/3.jpg",
                    Category = "Web Applications",
                    ProjectName = "Fuzzy Logic",
                    ProjectUrl = "#"
                },
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/4.jpg",
                    Category = "Web Applications",
                    ProjectName = "Error Control System",
                    ProjectUrl = "#"
                },
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/5.jpg",
                    Category = "Web Applications",
                    ProjectName = "SignalR",
                    ProjectUrl = "#"
                },
                new Portfolio()
                {
                    ImageSrc  = "img/portfolio/6.jpg",
                    Category = "Web Applications",
                    ProjectName = "WHOis",
                    ProjectUrl = "#"
                }
            });

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
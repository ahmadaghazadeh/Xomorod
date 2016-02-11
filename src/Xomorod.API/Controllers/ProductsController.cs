using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Xomorod.API.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ProductsController : ApiController
    {
        // GET api/products
        /// <summary>
        /// Get all products by default language (en)
        /// </summary>
        /// <returns>list of portfolios</returns>
        [Route("Products")]
        public async Task<IHttpActionResult> Get()
        {
            var portfolios = new List<object>();


            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync("SELECT * FROM xomorod.dbo.udfv_PortfoliosView(1)");

            products = products.OrderByDescending(x => x.Rank);

            foreach (var prod in products)
            {
                dynamic portfolio = new ExpandoObject();

                portfolio.ProjectName = prod.ProjectName;
                portfolio.Id = prod.PortfolioID;
                portfolio.ImageLink = await AdoManager.DataAccessObject.ExecuteScalarAsync<string>($"SELECT xomorod.dbo.getResourceLinkByElementID('{prod.Id}')");
                portfolio.Category = prod.Categories;
                portfolio.ProjectUrl = await AdoManager.DataAccessObject.ExecuteScalarAsync<string>($"SELECT xomorod.dbo.GetExtraLinkByName({prod.PortfolioID}, 'github')");
                portfolio.OpenSource = portfolio.ProjectUrl != null;
                portfolio.Description = prod.Summary;
                portfolio.Markdown = prod.MarkdownDescription;
                portfolio.ModifyDate = prod.ModifyDate.ToString("Y");

                portfolios.Add(portfolio);
            }


            return Ok(portfolios);
        }
    }
}

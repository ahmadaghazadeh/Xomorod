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

        /// <summary>
        /// Get all products by default language (en)
        /// </summary>
        /// <returns>list of portfolios</returns>
        [Route("Products")]
        public async Task<IHttpActionResult> Get()
        {
            return await Get("en");
        }

        /// <summary>
        /// Get all products by language
        /// </summary>
        /// <param name="language"><example>"en" or "fa"</example></param>
        /// <returns>list of portfolios</returns>
        [Route("Products/{language}")]
        public async Task<IHttpActionResult> Get(string language)
        {
            int langId;
            if (language.ToLower() == "fa") langId = 2;
            else if (language.ToLower() == "en") langId = 1;
            else
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromAsync($"udfv_PortfoliosView({langId})");

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language, row number range
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="fromRow">from this row no</param>
        /// <param name="toRow">to this row no</param>
        /// <returns></returns>
        [Route("Products/{language}/{fromRow}/{toRow}")]
        public async Task<IHttpActionResult> GetByRow(string language, int fromRow, int toRow)
        {
            int langId;
            if (language.ToLower() == "fa") langId = 2;
            else if (language.ToLower() == "en") langId = 1;
            else
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where RowNo BETWEEN {fromRow} AND {toRow}");

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language, category name
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="category">include category name of products</param>
        /// <returns></returns>
        [Route("Products/{language}/{category}")]
        public async Task<IHttpActionResult> GetByCategory(string language, string category)
        {
            int langId;
            if (language.ToLower() == "fa") langId = 2;
            else if (language.ToLower() == "en") langId = 1;
            else
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where Categories like  '%{category}%' ");

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language, category name, row number range
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="category">include category name of products</param>
        /// <param name="fromRow">from this row no</param>
        /// <param name="toRow">to this row no</param>
        /// <returns></returns>
        [Route("Products/{language}/{category}/{fromRow}/{toRow}")]
        public async Task<IHttpActionResult> GetByCategoryAndRow(string language, string category, int fromRow, int toRow)
        {
            int langId;
            if (language.ToLower() == "fa") langId = 2;
            else if (language.ToLower() == "en") langId = 1;
            else
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where Categories like  '%{category}%' and RowNo BETWEEN {fromRow} AND {toRow}");

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }



        private async Task<List<object>> ConvertToPortfoliosAsync(IEnumerable<dynamic> products)
        {
            var portfolios = new List<object>();

            products = products.OrderByDescending(x => x.Rank);

            foreach (var prod in products)
            {
                dynamic portfolio = new ExpandoObject();

                portfolio.Row = prod.RowNo;
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


            return portfolios;
        }


    }
}

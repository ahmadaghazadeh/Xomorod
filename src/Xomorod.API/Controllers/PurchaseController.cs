﻿using System;
using System.Threading.Tasks;
using System.Web.Http;
using AdoManager;
using Dapper;
using Newtonsoft.Json.Linq;

namespace Xomorod.API.Controllers
{
    public class PurchaseController : ApiController
    {
        // POST: api/ApiPurchase
        [HttpPost]
        [Route("Purchase")]
        public IHttpActionResult Post(JObject jsonData)
        {
            var va = jsonData.ToString();

            return Ok();
        }

        [HttpPost]
        [Route("Purchase/GetDeveloperPayload")]
        public async Task<IHttpActionResult> GetDeveloperPayload(JObject jsonData)
        {

            try
            {
                var param = new
                {
                    packageName = jsonData.GetValue("packageName").ToString(),
                    productId = jsonData.GetValue("productId").ToString()
                };

                var result = await ConnectionManager.GetDefaultConnection().SqlConn.QueryAsync("sp_GetDeveloperPayload",
                    param,
                    commandType: System.Data.CommandType.StoredProcedure);
                return Ok(result);
            }
            catch (Exception exp)
            {
                return InternalServerError(exp);
            }
        }

        [HttpPost]
        [Route("Purchase/SetCafeBazaarPurchase")]
        public async Task<IHttpActionResult> SetCafeBazaarPurchase(JObject jsonData)
        {
            try
            {
                var param = new
                {
                    orderId = jsonData.GetValue("orderId").ToString(),
                    packageName = jsonData.GetValue("packageName").ToString(),
                    productId = jsonData.GetValue("productId").ToString(),
                    developerPayload = jsonData.GetValue("developerPayload").ToString(),
                    purchaseToken = jsonData.GetValue("purchaseToken").ToString()
                };

                var result = await ConnectionManager.GetDefaultConnection().SqlConn.QueryAsync("sp_SetPurchaseValue",
                    param,
                    commandType: System.Data.CommandType.StoredProcedure);
                return Ok(result);
            }
            catch (Exception exp)
            {
                return InternalServerError(exp);
            }
        }
    }
}

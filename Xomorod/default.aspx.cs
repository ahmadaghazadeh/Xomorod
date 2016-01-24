using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Results;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xomorod
{
    public partial class _default : System.Web.UI.Page
    {
        private string lang = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Redirect to main domain: xomorod.com

#if !DEBUG
            if (Request.Url.Host.ToLower() != "localhost" &&
                Request.Url.Host.ToLower() != "xomorod.com")
            {
                Response.Redirect("http://xomorod.com");
            }
#endif

            #endregion
        }

        [WebMethod]
        protected string GetQueryLanguage()
        {
            return Request.QueryString["lang"];
        }
    }
}
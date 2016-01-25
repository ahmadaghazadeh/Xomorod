using System;
using System.Web.Services;

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
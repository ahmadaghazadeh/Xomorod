using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Xomorod.com.Startup))]
namespace Xomorod.com
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

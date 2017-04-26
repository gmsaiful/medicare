using Microsoft.Owin;
using Owin;
using ProviderInfo.Web;

[assembly: OwinStartup(typeof(Startup))]

namespace ProviderInfo.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
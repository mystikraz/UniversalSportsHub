using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UniversalSportsHub.Startup))]
namespace UniversalSportsHub
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

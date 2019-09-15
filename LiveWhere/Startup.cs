using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LiveWhere.Startup))]
namespace LiveWhere
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

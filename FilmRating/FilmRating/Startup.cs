using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FilmRating.Startup))]
namespace FilmRating
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

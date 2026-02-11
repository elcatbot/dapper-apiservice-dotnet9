namespace Microsoft.Extensions.DependencyInjection
{
    public static class MyServicesExtensions
    {
        public static IServiceCollection AddMyServices(this IServiceCollection services)
        {
            services.AddSingleton<ISqlDataAccess, SqlDataAccess>();
            services.AddSingleton<IUserData, UserData>();

            return services;
        }
    }
}
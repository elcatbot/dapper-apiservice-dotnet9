namespace Microsoft.AspNetCore.Builder
{
    public static class Api
    {
        public static void ConfigureApi(this WebApplication app)
        {
            app.MapGet("/users", GetUsers);
            app.MapGet("/users/{id}", GetUser);
            app.MapPost("/users", InsertUser);
            app.MapPut("/users", UpdateUser);
            app.MapDelete("/users", DeleteUser);
        }

        private static async Task<IResult> GetUsers(IUserData data)
        {
            return Results.Ok(await data.GetUsers());
        }

        private static async Task<IResult> GetUser(int id, IUserData data)
        {
            var res = await data.GetUser(id);
            return res == null ? Results.NotFound() : Results.Ok(res);
        }

        private static async Task<IResult> InsertUser(UserModel user, IUserData data)
        {
            await data.InsertUser(user);
            return Results.Ok();
        }

        private static async Task<IResult> UpdateUser(UserModel user, IUserData data)
        {
            await data.UpdatetUser(user);
            return Results.Ok();
        }

        private static async Task<IResult> DeleteUser(int id, IUserData data)
        {
            await data.DeleteUser(id);
            return Results.Ok();
        }
    }
}
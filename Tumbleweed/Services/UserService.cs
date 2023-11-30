namespace Tumbleweed.Services
{
    using System.Collections.Generic;
    using System.Data;
    using System.Data.Common;
    using System.Data.SqlClient;
    using System.Reflection;
    using System.Threading.Tasks;
    using Dapper;
    using Tumbleweed.Models;
    public class UserService
    {

        private readonly string _connectionString;

        public UserService(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public async Task<IEnumerable<User>> GetData()
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();
                return await connection.QueryAsync<User>("SELECT * FROM Users");
            }
        }

        public async Task<string> AuthenticateUser(string email, string password)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();
                var userAccount = await connection.QueryFirstOrDefaultAsync<User>("SELECT * FROM Users WHERE Email = @Email", new { Email = email });
                if (userAccount == null || userAccount.Password != password)
                {
                    return "Error";
                }
                return (userAccount.Id).ToString();
            }
        }

        public async Task<int> AddUser(User user)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();

                var parameters = new
                {
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    MiddleName = user.MiddleName,
                    Birthdate = user.Birthdate,
                    Email = user.Email,
                    Phone = user.Phone,
                    Password = user.Password
                };

                var result = await connection.ExecuteAsync("AddUser", parameters, commandType: CommandType.StoredProcedure);

                return result;
            }
        }
    }
}

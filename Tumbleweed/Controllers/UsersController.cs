using Microsoft.AspNetCore.Mvc;
using System.Data;
using Tumbleweed.Constants;
using Tumbleweed.Models;
using Dapper;


namespace Tumbleweed.Controllers
{
    public class UsersController : Controller
    {

        public bool UserRegister(User user)
        {
            using (var connection = DataBaseConstants.GetConnection())
            {
                connection.Open();
                var rows = connection.Execute(
                    DataBaseConstants.UserRegister,
                    new
                    {
                        user.LastName, user.FirstName,
                        user.Email, user.Password, user.Phone,
                        user.Birthdate, user.MiddleName
                    },
                    commandType: CommandType.StoredProcedure);
                return rows > 0;
            }
        }
    }
}

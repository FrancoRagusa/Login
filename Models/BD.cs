using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper; 

public static class BD 
{

private static string _connectionString = @"Server=localhost;DataBase=Login;Trusted_Connection=True;";

   public static void Register(Usuarios user) {
        string sql = "INSERT INTO Usuario(UserName,Contraseña,Nombre,Email,Teléfono) VALUES (@pUserName,@pContraseña,@pNombre,@pEmail,@pTelefono)";
        using(SqlConnection db = new SqlConnection(_connectionString)) {
            db.Execute(sql, new {pUserName = user.UserName, pContraseña = user.Contraseña, pTelefono = user.Teléfono, pEmail = user.Email, pNombre = user.Nombre});
        }
    }
    public static Usuarios Login(string userName, string contraseña) {
        Usuarios MiUser = new Usuarios();
        using(SqlConnection db = new SqlConnection(_connectionString)) {
            string sql = "SELECT * FROM Usuario WHERE userName = @pUserName AND Contraseña = @pContraseña";
            MiUser = db.QueryFirstOrDefault<Usuarios>(sql, new {pUserName = userName, pContraseña = contraseña });
        }
        return MiUser;
    }
     public static Usuarios Olvide(string mail) {
        Usuarios MiUser = new Usuarios();
        using(SqlConnection db = new SqlConnection(_connectionString)) {
            string sql = "SELECT * FROM Usuario WHERE Email = @pmail ";
            MiUser = db.QueryFirstOrDefault<Usuarios>(sql, new {pmail = mail });
        }
        return MiUser;
    }

}


using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper; 

public static class BD 
{

private static string _connectionString = @"Server=localhost;DataBase=Elecciones2023;Trusted_Connection=True;";

    public static Usuarios obtenerUsuario(string UserName)
    {
        Usuarios obtenerUsuario = null;
         using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Usuarios WHERE UserName = @pUserName";
            obtenerUsuario = db.QueryFirstOrDefault<Usuarios>(sql, new { pUserName = UserName});
        }
        return obtenerUsuario;
    }

    public static Usuarios obtenerContraseña(string Contraseña)
    {
        Usuarios obtenerContraseña = null;
         using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Usuarios WHERE Contraseña = @pContraseña";
            obtenerContraseña = db.QueryFirstOrDefault<Usuarios>(sql, new { pContraseña = Contraseña});
        }
        return obtenerContraseña;
    }

       public static Usuarios obtenerEmail(string Email)
    {
        Usuarios obtenerEmail = null;
         using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Usuarios WHERE Email = @pEmail";
            obtenerContraseña = db.QueryFirstOrDefault<Usuarios>(sql, new { pEmail = Email});
        }
        return obtenerEmail;
    }

}
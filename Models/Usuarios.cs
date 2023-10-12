public class Usuarios
{
    
    public string UserName {set; get;}
    public string Contraseña {set; get;}
    public string Nombre {set; get;}
    public string Email {set; get;}
    public string Teléfono {set; get;}
    

    public Usuarios() {
        UserName = "";
        Contraseña = "";
        Nombre ="";
        Email = "";
        Teléfono = 0;
    }
    public Usuarios(string userName, string contraseña, string nombre, string email, string telefono)
    {
        UserName = userName;
        Contraseña = contraseña;
        Nombre = nombre;
        Email = email;
        Teléfono = telefono;

    } 

    
}


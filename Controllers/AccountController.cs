 using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TPLogin.Models;

namespace TPLogin.Controllers;

public class AccountController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public AccountController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    /*Escriban aca los titulos de los metodos y comentario de que hace da uno
       Registro
       Login
       Recuperar Contraseña
    */

    public IActionResult Account()                                  
    {                                               
        ViewBag.UserName = BD.obtenerUsuario(UserName);                                           
        ViewBag.Contraseña = BD.obtenerContraseña(Contraseña);                      
        ViewBag.Email = BD.obtenerEmail(Email);                                 
        return View();*/                                                
    }                                                                                                                                                               

    public IActionResult Recibir()
    {                                                                           
        ViewBag.Recibir = BD.obtenerUsuario(    UserName);
    }
}                                                                                                                   
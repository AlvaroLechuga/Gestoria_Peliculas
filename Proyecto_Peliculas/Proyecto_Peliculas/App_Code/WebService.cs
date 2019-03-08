using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
	BaseDatos baseDatos;

	public WebService()
	{
		baseDatos = new BaseDatos("SERVER=localhost;DATABASE=cine;UID=root;PWD=''");
	}

	[WebMethod]
	public Boolean ComprobarUsuario(string usuario, string password)
	{
		baseDatos.Conectar();
		
		if(baseDatos.ComprobarUsuario(usuario, password))
		{
			baseDatos.Desconectar();
			return true;
		}
		else
		{
			baseDatos.Desconectar();
			return false;
		}

	}

	[WebMethod]
	public List<string> MostrarPelicula(string seleccion, string texto)
	{
		baseDatos.Conectar();
		List<string> listaPeliculas = baseDatos.MostrarPelicula(seleccion, texto);
		baseDatos.Desconectar();
		return listaPeliculas;
	}

	[WebMethod]
	public int InsertarPelicula(Pelicula pelicula)
	{
		baseDatos.Conectar();
		if(baseDatos.InsertarPelicula(pelicula) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
		
	}

	[WebMethod]
	public int InsertarDirector(Director director)
	{
		baseDatos.Conectar();

		if(baseDatos.InsertarDirector(director) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int InsertarInterprete(Interprete interprete)
	{
		baseDatos.Conectar();

		if (baseDatos.InsertarInterprete(interprete) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int InsertarActuar(Actuar actuar)
	{
		baseDatos.Conectar();

		if(baseDatos.InsertarActuar(actuar) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int ModificarPelicula(Pelicula pelicula)
	{
		baseDatos.Conectar();

		if(baseDatos.ModificarPelicula(pelicula) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int ModificarDirector(Director director)
	{
		baseDatos.Conectar();

		if(baseDatos.ModificarDirector(director) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int ModificarInterprete(Interprete interprete)
	{
		baseDatos.Conectar();

		if(baseDatos.ModificarInterprete(interprete) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public int ModificarActuar(Actuar actuar)
	{
		baseDatos.Conectar();

		if(baseDatos.ModificarActuar(actuar) == 0)
		{
			baseDatos.Desconectar();
			return 0;
		}
		else
		{
			baseDatos.Desconectar();
			return 1;
		}
	}

	[WebMethod]
	public Pelicula ObtenerPelicula(int codigo)
	{
		Pelicula pelicula = new Pelicula();

		baseDatos.Conectar();

		pelicula = baseDatos.ObtenerPelicula(codigo);

		baseDatos.Desconectar();

		return pelicula;
	}

	[WebMethod]
	public Interprete ObtenerInterprete(int codigo)
	{
		Interprete interprete = new Interprete();

		baseDatos.Conectar();

		interprete = baseDatos.ObtenerInterprete(codigo);

		baseDatos.Desconectar();

		return interprete;
	}

	[WebMethod]
	public Director ObtenerDirector(int codigo)
	{
		Director director = new Director();

		baseDatos.Conectar();

		director = baseDatos.ObtenerDirector(codigo);

		baseDatos.Desconectar();

		return director;
	}

	[WebMethod]
	public Actuar ObtenerActuar(int codPelicula, int codActor)
	{
		Actuar actuar = new Actuar();

		baseDatos.Conectar();

		actuar = baseDatos.ObtenerActuar(codPelicula, codActor);

		baseDatos.Desconectar();

		return actuar;
	}

}

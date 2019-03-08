using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// Descripción breve de BaseDatos
/// </summary>
public class BaseDatos
{
	private MySqlConnection cnx;

	public BaseDatos(string cadenaCnx)
	{
		cnx = new MySqlConnection(cadenaCnx);
	}

	public int Conectar()
	{
		int resultado = -1;
		try
		{
			cnx.Open();
			if (cnx.State == ConnectionState.Open)
				resultado = 1;
		}
		catch (MySqlException ex)
		{

		}
		return resultado;
	}

	public int Desconectar()
	{
		int resultado = -1;
		if (cnx.State == ConnectionState.Open)
		{
			cnx.Close();
			resultado = 1;
		}
		return resultado;
	}

	public Boolean ComprobarUsuario(string usuario, string password)
	{
		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		try
		{
			c.Connection = cnx;
			c.CommandText = "SELECT * FROM `usuarios` WHERE IDAdmin = '" + usuario + "' AND Password = '"+password+"'";

			d = c.ExecuteReader();
			if (d.HasRows)
			{
				d.Close();
				return true;
			}
			else
			{
				d.Close();
				return false;
			}
			

		}
		catch (MySqlException ex)
		{
			return false;
		}
	}

	public List<string> MostrarPelicula(string seleccion, string texto)
	{
		List<string> listaPeliculas = new List<String>();
		string consulta = "";
		switch (seleccion)
		{
			case "titulo":
				consulta = "SELECT Titulo, Year, Genero, Nacionalidad, IDDire FROM pelicula WHERE Titulo = '" + texto +"'";
				break;
			case "interprete":
				consulta = "SELECT pelicula.Titulo, pelicula.Year, pelicula.Genero, pelicula.Nacionalidad, pelicula.IDDire FROM ((pelicula INNER JOIN actuar ON actuar.IDPeli = pelicula.IDPeli) INNER JOIN interprete ON actuar.IDInt = interprete.IDInt) WHERE interprete.Nombre = '" + texto+"'";
				break;
			case "genero":
				consulta = "SELECT Titulo, Year, Genero, Nacionalidad, IDDire FROM pelicula WHERE Genero = '" + texto + "'";
				break;
			case "director":
				consulta = "SELECT pelicula.Titulo, pelicula.Year, pelicula.Genero, pelicula.Nacionalidad, pelicula.IDDire FROM pelicula INNER JOIN director ON pelicula.IDDire = director.IDDire WHERE director.Nombre = '" + texto + "'";
				break;
		}

		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		
		string nombre = "", year = "", genero = "", nacionalidad = "", idDirector = "";

		try
		{
			c.Connection = cnx;
			c.CommandText = consulta;
			d = c.ExecuteReader();
			if (d.HasRows)
			{
				while (d.Read())
				{
					nombre = d.GetString(0);
					year = Convert.ToString(d.GetInt32(1));
					genero = d.GetString(2);
					nacionalidad = d.GetString(3);
					idDirector = Convert.ToString(d.GetInt32(4));
					listaPeliculas.Add(nombre + "-" + year + "-"+genero+"-"+nacionalidad+"-"+idDirector);
				}
			}
			d.Close();
		}
			
		catch (MySqlException ex)
		{
		}


		return listaPeliculas;
	}

	public int InsertarPelicula(Pelicula pelicula)
	{
		MySqlCommand c = new MySqlCommand();

		try
		{
			c.Connection = cnx;
			c.CommandText = "INSERT INTO pelicula (IDPeli, Titulo, Year, Genero, Nacionalidad, IDDire) VALUES (NULL, '"+pelicula.Nombre+"', '"+pelicula.Year+"', '"+pelicula.Genero+"', '"+pelicula.Nacionalidad+"', '"+pelicula.IdDirector+"')";
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}
				
		}
		catch(MySqlException ex)
		{
			return 0;
		}

	}

	public int ModificarPelicula(Pelicula pelicula)
	{
		MySqlCommand c = new MySqlCommand();
		try
		{
			c.Connection = cnx;
			c.CommandText = "UPDATE pelicula SET Titulo='" + pelicula.Nombre + "', Year ='" + pelicula.Year + "', Genero = '"+pelicula.Genero+"', Nacionalidad = '"+pelicula.Nacionalidad+"', IDDire = '"+pelicula.IdDirector+"' WHERE IDPeli = " + pelicula.Id;
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int InsertarInterprete(Interprete interprete)
	{
		MySqlCommand c = new MySqlCommand();

		try
		{

			c.Connection = cnx;
			c.CommandText = "INSERT INTO interprete (IDInt, Nombre, Edad) VALUES (NULL, '" + interprete.Nombre + "', '" + interprete.Edad +"')";
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int ModificarInterprete(Interprete interprete)
	{
		MySqlCommand c = new MySqlCommand();
		try
		{
			c.Connection = cnx;
			c.CommandText = "UPDATE interprete SET Nombre='" + interprete.Nombre + "', Edad ='" + interprete.Edad + "' WHERE IDInt = " + interprete.Id;

			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int InsertarDirector(Director director)
	{
		MySqlCommand c = new MySqlCommand();

		try
		{
			c.Connection = cnx;
			c.CommandText = "INSERT INTO director (IDDire, Nombre, Nacionalidad) VALUES (NULL, '" + director.Nombre + "', '" + director.Nacionalidad + "')";
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int ModificarDirector(Director director)
	{
		MySqlCommand c = new MySqlCommand();
		try
		{
			c.Connection = cnx;
			c.CommandText = "UPDATE director SET Nombre='" + director.Nombre + "', Nacionalidad ='" + director.Nacionalidad + "' WHERE IDDire=" + director.Id;

			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int InsertarActuar(Actuar actuar)
	{
		MySqlCommand c = new MySqlCommand();

		try
		{
			c.Connection = cnx;
			c.CommandText = "INSERT INTO actuar (IDPeli, IDInt, Premiado) VALUES ('" + actuar.IdPeli + "', '" + actuar.IdInterprete + "', '" + actuar.Premiado + "')";
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public int ModificarActuar(Actuar actuar)
	{
		MySqlCommand c = new MySqlCommand();
		try
		{
			c.Connection = cnx;
			c.CommandText = "UPDATE actuar SET Premiado ='" + actuar.Premiado + "' WHERE IDPeli = " + actuar.IdPeli + " AND IDInt = '"+actuar.IdInterprete+"'";
			int r = c.ExecuteNonQuery();

			if (r == 1)
			{
				return 1;
			}
			else
			{
				return 0;
			}

		}
		catch (MySqlException ex)
		{
			return 0;
		}
	}

	public Pelicula ObtenerPelicula(int codigo)
	{
		Pelicula pelicula = new Pelicula();

		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		try
		{
			c.Connection = cnx;
			c.CommandText = "SELECT * FROM `pelicula` WHERE IDPeli = '"+codigo+"'";
			d = c.ExecuteReader();
			if (d.HasRows)
			{
				while (d.Read())
				{
					pelicula.Id = d.GetInt32(0);
					pelicula.Nombre = d.GetString(1);
					pelicula.Year = d.GetInt32(2);
					pelicula.Genero = d.GetString(3);
					pelicula.Nacionalidad = d.GetString(4);
					pelicula.IdDirector = d.GetInt32(5);
				}
			}
			d.Close();

		}
		catch (MySqlException ex)
		{
		}

		return pelicula;
	}

	public Director ObtenerDirector(int codigo)
	{
		Director director = new Director();

		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		try
		{
			c.Connection = cnx;
			c.CommandText = "SELECT * FROM `director` WHERE IDDire = '" + codigo + "'";
			d = c.ExecuteReader();
			if (d.HasRows)
			{
				while (d.Read())
				{
					director.Id = d.GetInt32(0);
					director.Nombre = d.GetString(1);
					director.Nacionalidad = d.GetString(2);
				}
			}
			d.Close();

		}
		catch (MySqlException ex)
		{
		}

		return director;
	}

	public Actuar ObtenerActuar(int codigoPelicula, int codigoActor)
	{
		Actuar actuar = new Actuar();

		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		try
		{
			c.Connection = cnx;
			c.CommandText = "SELECT * FROM `actuar` WHERE IDPeli = '" + codigoPelicula + "' AND IDInt = '" + codigoActor+"'";
			d = c.ExecuteReader();
			if (d.HasRows)
			{
				while (d.Read())
				{
					actuar.IdPeli = d.GetInt32(0);
					actuar.IdInterprete = d.GetInt32(1);
					actuar.Premiado = d.GetString(2);
				}
			}
			d.Close();

		}
		catch (MySqlException ex)
		{
		}

		return actuar;
	}

	public Interprete ObtenerInterprete(int codigo)
	{
		Interprete interprete = new Interprete();

		MySqlCommand c = new MySqlCommand();
		MySqlDataReader d;
		try
		{
			c.Connection = cnx;
			c.CommandText = "SELECT * FROM `interprete` WHERE IDInt = '" + codigo + "'";
			d = c.ExecuteReader();
			if (d.HasRows)
			{
				while (d.Read())
				{
					interprete.Id = d.GetInt32(0);
					interprete.Nombre = d.GetString(1);
					interprete.Edad = d.GetInt32(2);
				}
			}
			d.Close();

		}
		catch (MySqlException ex)
		{
		}

		return interprete;
	}
}
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Pelicula
/// </summary>
public class Pelicula
{
	private int id;
	private string nombre;
	private int year;
	private string genero;
	private string nacionalidad;
	private int idDirector;

	public Pelicula()
	{
	}

	public Pelicula(int id, string nombre, int year, string genero, string nacionalidad, int idDirector)
	{
		this.id = id;
		this.nombre = nombre;
		this.year = year;
		this.genero = genero;
		this.nacionalidad = nacionalidad;
		this.idDirector = idDirector;
	}

	public int Id { get => id; set => id = value; }
	public string Nombre { get => nombre; set => nombre = value; }
	public int Year { get => year; set => year = value; }
	public string Genero { get => genero; set => genero = value; }
	public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
	public int IdDirector { get => idDirector; set => idDirector = value; }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Director
/// </summary>
public class Director
{
	private int id;
	private string nombre;
	private string nacionalidad;

	public Director()
	{
	}

	public Director(int id, string nombre, string nacionalidad)
	{
		this.id = id;
		this.nombre = nombre;
		this.nacionalidad = nacionalidad;
	}

	public int Id { get => id; set => id = value; }
	public string Nombre { get => nombre; set => nombre = value; }
	public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
}
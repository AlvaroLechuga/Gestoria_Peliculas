using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Interprete
/// </summary>
public class Interprete
{
	private int id;
	private string nombre;
	private int edad;

	public Interprete()
	{
	}

	public Interprete(int id, string nombre, int edad)
	{
		this.id = id;
		this.nombre = nombre;
		this.edad = edad;
	}

	public int Id { get => id; set => id = value; }
	public string Nombre { get => nombre; set => nombre = value; }
	public int Edad { get => edad; set => edad = value; }
}
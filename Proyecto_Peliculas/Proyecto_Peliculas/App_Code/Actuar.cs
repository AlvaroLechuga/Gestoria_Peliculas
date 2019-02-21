using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Actuar
/// </summary>
public class Actuar
{
	private int idPeli;
	private int idInterprete;
	private string premiado;

	public Actuar()
	{
	}

	public Actuar(int idPeli, int idInterprete, string premiado)
	{
		this.idPeli = idPeli;
		this.idInterprete = idInterprete;
		this.premiado = premiado;
	}

	public int IdPeli { get => idPeli; set => idPeli = value; }
	public int IdInterprete { get => idInterprete; set => idInterprete = value; }
	public string Premiado { get => premiado; set => premiado = value; }
}
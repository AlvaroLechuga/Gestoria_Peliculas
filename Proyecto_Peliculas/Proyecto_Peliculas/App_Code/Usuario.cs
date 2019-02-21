using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Usuario
/// </summary>
public class Usuario
{
	private string id;
	private string password;

	public Usuario()
	{
	}

	public Usuario(string id, string password)
	{
		this.id = id;
		this.password = password;
	}

	public string Id { get => id; set => id = value; }
	public string Password { get => password; set => password = value; }
}
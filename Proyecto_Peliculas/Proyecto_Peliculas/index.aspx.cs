using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		string usuario = txtUsuario.Text;
		string password = txtPassword.Text;

		WebService w = new WebService();
		if(w.ComprobarUsuario(usuario, password))
		{
			if (usuario.Equals("admin"))
			{
				Response.Redirect("SeleccionarCrearModificar.aspx");
			}
			else
			{
				Response.Redirect("ConsultasPeliculas.aspx");
			}
		}
	}
}
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
			Session["usuario"] = usuario;
			Response.Redirect("SeleccionarCrearModificar.aspx");
		}
	}

	protected void btnInvitado_Click(object sender, EventArgs e)
	{
		Session["usuario"] = "Invitado";
		Response.Redirect("ConsultasPeliculas.aspx");
	}
}
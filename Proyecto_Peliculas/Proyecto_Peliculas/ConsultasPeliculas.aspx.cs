using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsultasPeliculas : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		txtUsuario.Text = Session["usuario"].ToString();
	}

	protected void btnBuscar_Click(object sender, ImageClickEventArgs e)
	{
		string opcion = "";
		switch (ddConsulta.SelectedIndex)
		{
			case 0:
				opcion = "titulo";
				break;
			case 1:
				opcion = "interprete";
				break;
			case 2:
				opcion = "genero";
				break;
			case 3:
				opcion = "director";
				break;
		}

		string texto = txtBusqueda.Text;

		WebService w = new WebService();

		List<string> listaPeliculas = w.MostrarPelicula(opcion, texto);

		ddResultados.Items.Add("--Selecciona--");
		foreach(string pelicula in listaPeliculas)
		{
			ddResultados.Items.Add(pelicula);
		}

		
		ddResultados.Visible = true;
		btnCargarWeb.Visible = true;
	}

	protected void btnCargarWeb_Click(object sender, ImageClickEventArgs e)
	{
		if(ddResultados.SelectedIndex != 0)
		{
			Pelicula pelicula = new Pelicula();
			string[] vs = ddResultados.SelectedItem.Text.Split('-');

			Session["pelicula_nombre"] = vs[0];
			Session["pelicula_year"] = Convert.ToInt32(vs[1]);
			Session["pelicula_genero"] = vs[2];
			Session["pelicula_nacionalidad"] = vs[3];
			Session["pelicula_idDirector"] = Convert.ToInt32(vs[4]);

			Response.Redirect("MostrarPelicula.aspx");
		}
	}
}
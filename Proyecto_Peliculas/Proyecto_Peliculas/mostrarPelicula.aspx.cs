using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mostrarPelicula : System.Web.UI.Page
{
	string nombre, year, genero, nacionalidad, idDirector;
	
	protected void Page_Load(object sender, EventArgs e)
	{
		txtNombre.Text = Session["pelicula_nombre"].ToString();
		txtYear.Text = Session["pelicula_year"].ToString();
		txtGenero.Text = Session["pelicula_genero"].ToString();
		txtNacionalidad.Text = Session["pelicula_nacionalidad"].ToString();
		txtIdDirector.Text = Session["pelicula_idDirector"].ToString();
		
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPelicula : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{

		Pelicula pelicula = new Pelicula();
		pelicula.Nombre = txtTitulo.Text;
		pelicula.Year = Convert.ToInt32(txtyear.Text);
		pelicula.Genero = txtGenero.Text;
		pelicula.Nacionalidad = txtNacionalidad.Text;
		pelicula.IdDirector = Convert.ToInt32(txtIdDirector.Text);

		WebService w = new WebService();
		
		if(w.InsertarPelicula(pelicula) == 0)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al insertar');</script>");
		}
		else
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha insertado correctamente');</script>");
		}
	}
}
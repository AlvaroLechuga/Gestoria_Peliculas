using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyPelicula : System.Web.UI.Page
{
	int codigo;
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if(codigo == Convert.ToInt32(txtId.Text))
		{
			Pelicula pelicula = new Pelicula();
			pelicula.Id = Convert.ToInt32(txtId.Text);
			pelicula.Nombre = txtTitulo.Text;
			pelicula.Nacionalidad = txtNacionalidad.Text;
			pelicula.Year = Convert.ToInt32(txtYear.Text);
			pelicula.IdDirector = Convert.ToInt32(txtIdDirector.Text);
			pelicula.Genero = txtGenero.Text;

			WebService w = new WebService();

			if (w.ModificarPelicula(pelicula) == 0)
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al modificar');</script>");
			}
			else
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha modificado correctamente');</script>");
			}
		}
		else
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error, se ha modificado la clave IDPelicula');</script>");
		}
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		codigo = Convert.ToInt32(txtId.Text);

		WebService w = new WebService();
		Pelicula pelicula = w.ObtenerPelicula(codigo);

		txtTitulo.Text = pelicula.Nombre;
		txtGenero.Text = pelicula.Genero;
		txtIdDirector.Text = Convert.ToString(pelicula.IdDirector);
		txtNacionalidad.Text = pelicula.Nacionalidad;
		txtYear.Text = Convert.ToString(pelicula.Year);

	}
}
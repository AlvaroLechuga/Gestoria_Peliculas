using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyDirector : System.Web.UI.Page
{
	int id;
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if(id == Convert.ToInt32(txtIdDirector.Text))
		{
			Director director = new Director();
			director.Id = Convert.ToInt32(txtIdDirector.Text);
			director.Nombre = txtNombre.Text;
			director.Nacionalidad = txtNacionalidad.Text;

			WebService w = new WebService();

			if (w.ModificarDirector(director) == 0)
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
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha modificado la clave IDDirector');</script>");
		}
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		id = Convert.ToInt32(txtIdDirector.Text);

		WebService w = new WebService();

		Director director = w.ObtenerDirector(id);

		txtNombre.Text = director.Nombre;
		txtNacionalidad.Text = director.Nacionalidad;
	}
}
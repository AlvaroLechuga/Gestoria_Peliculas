using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddDirector : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Director director = new Director();
		director.Nombre = txtNombre.Text;
		director.Nacionalidad = txtNacionalidad.Text;

		WebService w = new WebService();

		if(w.InsertarDirector(director) == 0)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al insertar');</script>");
		}
		else
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha insertado correctamente');</script>");
		}
	}
}
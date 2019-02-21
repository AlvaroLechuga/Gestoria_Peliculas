using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Interprete interprete = new Interprete();
		interprete.Nombre = txtNombre.Text;
		interprete.Edad = Convert.ToInt32(txtEdad.Text);

		WebService w = new WebService();

		if(w.InsertarInterprete(interprete) == 0)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al insertar');</script>");
		}
		else
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha insertado correctamente');</script>");
		}
	}
}
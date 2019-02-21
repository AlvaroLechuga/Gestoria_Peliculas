using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyInterprete : System.Web.UI.Page
{
	int codigo;
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if(codigo == Convert.ToInt32(txtId.Text))
		{
			Interprete interprete = new Interprete();
			interprete.Id = Convert.ToInt32(txtId.Text);
			interprete.Nombre = txtNombre.Text;
			interprete.Edad = Convert.ToInt32(txtEdad.Text);

			WebService w = new WebService();

			if (w.ModificarInterprete(interprete) == 0)
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
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha modificado la clave IDInterprete');</script>");
		}
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		codigo = Convert.ToInt32(txtId.Text);

		WebService w = new WebService();

		Interprete interprete = w.ObtenerInterprete(codigo);

		txtNombre.Text = interprete.Nombre;
		txtEdad.Text = Convert.ToString(interprete.Edad);

	}
}
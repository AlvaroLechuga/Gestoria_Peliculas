using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyActuar : System.Web.UI.Page
{
	int codPelicula;
	int codActor;
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		codPelicula = Convert.ToInt32(txtCodPelicula.Text);
		codActor = Convert.ToInt32(txtCodActor.Text);

		WebService w = new WebService();

		Actuar actuar = w.ObtenerActuar(codPelicula, codActor);

		txtPremiado.Text = actuar.Premiado;

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if(codPelicula != Convert.ToInt32(txtCodPelicula.Text))
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error, has modificado la clave codPelicula');</script>");
		}

		if(codActor != Convert.ToInt32(txtCodActor.Text))
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error, has modificado la clave codActor');</script>");
		}

		if(codPelicula == Convert.ToInt32(txtCodPelicula.Text) && codActor == Convert.ToInt32(txtCodActor.Text))
		{
			Actuar actuar = new Actuar();
			actuar.IdPeli = Convert.ToInt32(txtCodPelicula.Text);
			actuar.IdInterprete = Convert.ToInt32(txtCodActor.Text);
			actuar.Premiado = txtPremiado.Text;

			WebService w = new WebService();

			if (w.ModificarActuar(actuar) == 0)
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al modificar');</script>");
			}
			else
			{
				Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha modificado correctamente');</script>");
			}
		}
	}
}
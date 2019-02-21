using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddActuar : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Actuar actuar = new Actuar();
		actuar.IdPeli = Convert.ToInt32(txtIdPelicula.Text);
		actuar.IdInterprete = Convert.ToInt32(txtIdInterprete.Text);
		actuar.Premiado = txtPremio.Text;

		WebService w = new WebService();
		if(w.InsertarActuar(actuar) == 0)
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ha ocurrido un error al insertar');</script>");
		}
		else
		{
			Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Se ha insertado el registro');</script>");
		}
	}
}
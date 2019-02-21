using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SeleccionarCrearModificar : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		txtUsuario.Text = Session["usuario"].ToString();
	}

	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		Response.Redirect("Add.aspx");
	}

	protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
	{
		Response.Redirect("Modify.aspx");
	}
}
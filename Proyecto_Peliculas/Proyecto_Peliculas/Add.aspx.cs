using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Response.Redirect("AddPelicula.aspx");
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Response.Redirect("AddInterprete.aspx");
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		Response.Redirect("AddDirector.aspx");
	}

	protected void Button4_Click(object sender, EventArgs e)
	{
		Response.Redirect("AddActuar.aspx");
	}
}
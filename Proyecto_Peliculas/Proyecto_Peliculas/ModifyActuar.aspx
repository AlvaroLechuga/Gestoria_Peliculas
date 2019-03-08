<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyActuar.aspx.cs" Inherits="ModifyActuar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Actuación</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="style.css" />
	<style>
		body{
			background-image: url("Imagenes/background.png");
			background-size: cover;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
		<div class="card card-block">
			<h4 class="card-title">Modificar una Actuación</h4>
			<div class="form-row">

				<div class="form-group col-md-5">
					<asp:TextBox ID="txtCodPelicula" placeholder="Introduce el ID de la pelicula" class="form-control" runat="server"></asp:TextBox>
				</div>

				<div class="form-group col-md-5">
					<asp:TextBox ID="txtCodActor" placeholder="Introduce el ID del actor" class="form-control" runat="server"></asp:TextBox>
				</div>

				<div class="form-group col-md-2">
					<asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Buscar" OnClick="Button2_Click" />
					
					<br />
					

				</div>
				
				<br />
				
			<div class="form-group">
				Premio <asp:TextBox  ID="txtPremiado" CssClass="form-control" runat="server"></asp:TextBox>
			</div>

			<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="MODIFICAR" Height="40px" OnClick="Button1_Click" />
		</div>
	</form>
</body>
</html>

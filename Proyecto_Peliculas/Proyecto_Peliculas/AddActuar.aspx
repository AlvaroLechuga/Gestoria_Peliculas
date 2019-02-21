<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddActuar.aspx.cs" Inherits="AddActuar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Insertar Actuar</title>
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
			<h4 class="card-title">Insertar una Actuación</h4>
			<div class="form-row">
				<div class="form-group col-md-6">
					
					ID Pelicula <asp:TextBox ID="txtIdPelicula" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					
					ID Interprete <asp:TextBox ID="txtIdInterprete" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>
			<div class="form-group">
				Premio <asp:TextBox  ID="txtPremio" CssClass="form-control" runat="server"></asp:TextBox>
			</div>

			<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="INSERTAR" Height="40px" OnClick="Button1_Click" />
		</div>
		<br />
		<div class="card card-block">
			<h5>Posibles Errores</h5>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdPelicula" ErrorMessage="ID Pelicula es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdPelicula" ErrorMessage="Error en el formato de IDPelicula" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIdInterprete" ErrorMessage="ID Interprete es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIdInterprete" ErrorMessage="Error en el formato de IDInterprete" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
		</div>	
	</form>
	
</body>
</html>

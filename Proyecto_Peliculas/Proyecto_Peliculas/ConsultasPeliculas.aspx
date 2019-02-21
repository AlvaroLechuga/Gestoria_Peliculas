<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultasPeliculas.aspx.cs" Inherits="ConsultasPeliculas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
			<h4 class="card-title">Bienvenido <asp:Label ID="txtUsuario" runat="server" Text="Label"></asp:Label></h4>
			<div class="form-row">
				<div class="form-group col-md-3">
					<asp:DropDownList ID="ddConsulta" class="form-control" runat="server">
						<asp:ListItem>Título</asp:ListItem>
						<asp:ListItem>Intérprete</asp:ListItem>
						<asp:ListItem>Género</asp:ListItem>
						<asp:ListItem>Director</asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="form-group col-md-8">
					<asp:TextBox ID="txtBusqueda" placeholder="Introduce el ID" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-1">
					<asp:ImageButton ID="btnBuscar" runat="server" ImageUrl="~/Imagenes/search.png" OnClick="btnBuscar_Click" /><br />
					<br />
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo titulo es obligatorio" ControlToValidate="txtBusqueda" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
				</div>
				<div class="form-group col-md-11">
					<asp:DropDownList ID="ddResultados" class="form-control" runat="server" Visible="False"></asp:DropDownList>
				</div>
				<div class="form-group col-md-1">
					<asp:ImageButton ID="btnCargarWeb" runat="server" ImageUrl="~/Imagenes/search.png" Visible="false" OnClick="btnCargarWeb_Click" /><br />
					<br /><br />
				</div>
				</div>
		</div>
    </form>
</body>
</html>

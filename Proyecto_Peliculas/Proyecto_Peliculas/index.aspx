<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
    <title>Iniciar Sesion</title>
	<link rel="stylesheet" href="style.css" />
	<style>

		body{
			background-image: url("Imagenes/background.png");
			background-size: cover;
		}

	</style>
</head>
<body>
	<div id="fondo">
		<form id="form1" runat="server">
			<div class="card card-block">
				<h4 class="card-title">Iniciar sesión</h4>
				<div class="form-group">
					<asp:TextBox ID="txtUsuario" CssClass="form-control" placeholder="Introduce el usuario" runat="server"></asp:TextBox>
				</div>
				<div class="form-group">
					<asp:TextBox ID="txtPassword" type="password" CssClass="form-control" placeholder="Introduce la contraseña" runat="server"></asp:TextBox>
				</div>
				
				<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Iniciar Sesión" OnClick="Button1_Click" />
				<asp:Button ID="btnInvitado" class="btn btn-primary" runat="server" Text="Invitado" OnClick="btnInvitado_Click" />
			</div>
			
		</form>
	</div>
</body>
</html>

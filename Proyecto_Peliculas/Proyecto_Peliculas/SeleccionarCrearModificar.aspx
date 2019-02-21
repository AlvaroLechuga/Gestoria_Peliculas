<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeleccionarCrearModificar.aspx.cs" Inherits="SeleccionarCrearModificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear o modificar pelicula</title>
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
			<h4 class="card-title">Bienvenido
				<asp:Label ID="txtUsuario" runat="server" Text="Label"></asp:Label>
				, Selecciona una opción: </h4><br />
			<asp:ImageButton ID="ImageButton1" runat="server" Height="105px" ImageUrl="~/Imagenes/new.png" Width="142px" OnClick="ImageButton1_Click" />
			<asp:ImageButton ID="ImageButton2" runat="server" Height="105px" ImageUrl="~/Imagenes/modify.png" Width="142px" OnClick="ImageButton2_Click" />
        </div>
    </form>

</body>
</html>

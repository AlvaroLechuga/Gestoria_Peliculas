<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="style.css" />
    <title>Añadir</title>
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
			<h4 class="card-title">Selecciona la tabla </h4>
			<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="PELICULA" Height="40px" OnClick="Button1_Click" />
			<asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="INTÉRPRETE" Height="40px" OnClick="Button2_Click" />
			<asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="DIRECTOR" Height="40px" OnClick="Button3_Click" />
			<asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="ACTUAR" Height="40px" OnClick="Button4_Click" />
			
        </div>
    </form>
</body>
</html>

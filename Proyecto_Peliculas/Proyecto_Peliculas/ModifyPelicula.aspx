<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPelicula.aspx.cs" Inherits="ModifyPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Pelicula</title>
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
			<h4 class="card-title">Modificar una Película</h4>
			<br />
			<div class="form-row">

				<div class="form-group col-md-11">
					<asp:TextBox ID="txtId" placeholder="Introduce el ID" class="form-control" runat="server"></asp:TextBox>
				</div>

				<div class="form-group col-md-1">
					<asp:Button ID="btnBuscar" runat="server" class="btn btn-primary" Text="Buscar" OnClick="Button2_Click" /><br /><br />
				</div>

				<div class="form-group col-md-6">
					Titulo
					<asp:TextBox ID="txtTitulo" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					Año
					<asp:TextBox ID="txtYear" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					Género
					<asp:TextBox ID="txtGenero" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-4">
					Nacionalidad
					<asp:TextBox ID="txtNacionalidad" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-2">
					ID Director
					<asp:TextBox ID="txtIdDirector" class="form-control" runat="server"></asp:TextBox>

				</div>
			</div>

			<asp:Button ID="btnModificar" class="btn btn-danger" runat="server" Text="MODIFICAR" Height="40px" OnClick="Button1_Click" />
		</div>

		
	</form>
</body>
</html>

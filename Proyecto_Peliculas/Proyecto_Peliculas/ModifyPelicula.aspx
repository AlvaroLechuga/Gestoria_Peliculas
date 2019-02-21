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

				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo IDPelicula es obligatorio" ControlToValidate="txtId" ForeColor="Red"></asp:RequiredFieldValidator>

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

		<br />

		<div class="card card-block">
			<h5>Posibles Errores</h5>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTitulo" ErrorMessage="El campo Titulo es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtYear" ErrorMessage="El campo Año es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGenero" ErrorMessage="El campo Genero es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="El campo Nacionalidad es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtIdDirector" ErrorMessage="El campo IDDirector es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>



		</div>
		
	</form>
</body>
</html>

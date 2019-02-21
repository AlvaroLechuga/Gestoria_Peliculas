<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyInterprete.aspx.cs" Inherits="ModifyInterprete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="style.css" />
    <title>Modificar Interprete</title>
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
			<h4 class="card-title">Modificar un Intérprete</h4>
			<div class="form-row">

				<div class="form-group col-md-11">
					<asp:TextBox ID="txtId" placeholder="Introduce el ID" class="form-control" runat="server"></asp:TextBox>
				</div>

				<div class="form-group col-md-1">
					<asp:Button ID="btnBuscar" runat="server" class="btn btn-primary" Text="Buscar" OnClick="Button2_Click" /><br />
					<br />
				</div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo IDInterprete es obligatorio" ControlToValidate="txtId" ForeColor="Red"></asp:RequiredFieldValidator>
				<div class="form-group col-md-6">
					Nombre
					<asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					Edad
					<asp:TextBox ID="txtEdad" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>

			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo Nombre es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>

			<asp:Button ID="btnModificar" class="btn btn-danger" runat="server" Text="MODIFICAR" Height="40px" OnClick="Button1_Click" />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEdad" ErrorMessage="El campo Edad es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
		</div>
		
	</form>
</body>
</html>

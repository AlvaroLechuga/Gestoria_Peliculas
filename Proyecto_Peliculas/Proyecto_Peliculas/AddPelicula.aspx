<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPelicula.aspx.cs" Inherits="AddPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Insertar Pelicula</title>
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
			<h4 class="card-title">Insertar una Película</h4>
			<div class="form-row">
				<div class="form-group col-md-6">
					
					Titulo <asp:TextBox ID="txtTitulo" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					
					Año <asp:TextBox ID="txtyear" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					Género <asp:TextBox ID="txtGenero" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-4">
					Nacionalidad <asp:TextBox ID="txtNacionalidad" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-2">
					ID Director <asp:TextBox ID="txtIdDirector" class="form-control" runat="server"></asp:TextBox>

				</div>
				
			</div>
			<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="INSERTAR" Height="40px" OnClick="Button1_Click" />
		</div>
		
		<br />

		<div class="card card-block">
			<h5>Posibles Errores</h5>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitulo" ErrorMessage="El campo titulo es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtyear" ErrorMessage="El campo año es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtyear" ErrorMessage="Error en el año" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGenero" ErrorMessage="El campo género es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtGenero" ErrorMessage="Error en el género" ForeColor="Red" ValidationExpression="^[a-zA-Z ñÑáÁéÉíÍóÓúÚ]*$"></asp:RegularExpressionValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="El campo nacionalidad es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Error en la nacionalidad" ForeColor="Red" ValidationExpression="^[a-zA-Z ñÑáÁéÉíÍóÓúÚ]*$"></asp:RegularExpressionValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIdDirector" ErrorMessage="El campo IDDirector es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtIdDirector" ErrorMessage="Error en el IDDirector" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>


		</div>

	</form>
	
</body>
</html>

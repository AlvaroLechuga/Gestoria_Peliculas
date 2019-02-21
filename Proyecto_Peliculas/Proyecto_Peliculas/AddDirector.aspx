<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDirector.aspx.cs" Inherits="AddDirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Insertar Director</title>
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
			<h4 class="card-title">Insertar un Director</h4>
			<div class="form-row">
				<div class="form-group col-md-6">
					
					Nombre <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					
					Nacionalidad <asp:TextBox ID="txtNacionalidad" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>

			<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="INSERTAR" Height="40px" OnClick="Button1_Click" />
		</div>
		<br />
		
	<div class="card card-block">
		<h5>Posibles Errores</h5>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo nombre es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error en el Nombre" ControlToValidate="txtNombre" ForeColor="Red" ValidationExpression="^[a-zA-Z ñÑáÁéÉíÍóÓúÚ]*$"></asp:RegularExpressionValidator><br />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="El campo nacionalidad es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Error en la Nacionalidad" ControlToValidate="txtNacionalidad" ForeColor="Red" ValidationExpression="^[a-zA-Z ñÑáÁéÉíÍóÓúÚ]*$"></asp:RegularExpressionValidator>
	</div>
		
	</form>
	</body>
</html>

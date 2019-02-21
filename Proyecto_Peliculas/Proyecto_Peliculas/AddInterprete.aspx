<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddInterprete.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="style.css" />
    <title>Insertar Intérprete</title>
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
			<h4 class="card-title">Insertar un Intérprete</h4>
			<div class="form-row">
				<div class="form-group col-md-6">
					
					Nombre <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
				</div>
				<div class="form-group col-md-6">
					
					Edad <asp:TextBox ID="txtEdad" class="form-control" runat="server"></asp:TextBox>
				</div>
			</div>

			<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="INSERTAR" Height="40px" OnClick="Button1_Click" />
		</div>
		<br />
		<div class="card card-block">
			<h5>Posibles Errores</h5>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo nombre es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error en el nombre" ForeColor="Red" ValidationExpression="^[a-zA-Z ñÑáÁéÉíÍóÓúÚ]*$"></asp:RegularExpressionValidator>
			<br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEdad" ErrorMessage="El campo edad es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEdad" ErrorMessage="Error en la edad" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
		</div>
	</form>
</body>
</html>

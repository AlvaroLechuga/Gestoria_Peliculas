<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mostrarPelicula.aspx.cs" Inherits="mostrarPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="style.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
	<style>
		body{
			margin-top: 10px;
			background-image: url("Imagenes/background.png");
			background-size: cover;
		}
		#informacion{
			margin-left: 30px;
		}
		.titular{
			font-weight:bold;
			font-size: 15px;
		}

	</style>
</head>
<body>
    
	<form>
		
		<div class ="card card-block">

			<div class="container-fluid bg-3 text-center">
				<h3>INFORMACIÓN DE LA PELÍCULA</h3>
				<br />
				<div class="row">
					<div class="col-sm-3">
						<asp:Label class="titular" ID="txtNombre" runat="server" Text="Label"></asp:Label>
						<img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%" alt="Image" />
					</div>
					<div id="informacion"><br />
						<span class="titular">LANZAMIENTO: </span><asp:Label ID="txtYear" runat="server" Text="Label"></asp:Label><br />
						<span class="titular">GENERO: </span><asp:Label ID="txtGenero" runat="server" Text="Label"></asp:Label><br />
						<span class="titular">NACIONALIDAD: </span><asp:Label ID="txtNacionalidad" runat="server" Text="Label"></asp:Label><br />
						<span class="titular">ID DEL DIRECTOR: </span><asp:Label ID="txtIdDirector" runat="server" Text="Label"></asp:Label><br />
					</div>
				</div>
			</div>
			<br /><br />
		

	 <div class="form-row">
		 <div class="form-group col-md-6">
			 <label for="inputCity">Opinión</label>
			 <textarea class="form-control" rows="5" id="opinion"></textarea>
		 </div>
    <div class="form-group col-md-4">
      <label for="inputState">Nota</label>
		<select id="inputNota" class="form-control">
			<option selected>Elije una Opcion</option>
			<option>0</option>
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Nombre</label>
      <input type="text" class="form-control" id="inputNombre" />
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck" />
      <label class="form-check-label" for="gridCheck">
        Acepto los Términos
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button>

</div>

    </form>
</body>
</html>

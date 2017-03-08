<!DOCTYPE html>
<html>
	<head>
		<title>Login Biblioteca</title>
		<link rel="stylesheet" type="text/css" href="css/estilos.css"/>
		<link rel="stylesheet" type="text/css" href="css/colorsandtext.css"/>
		
	</head>
	<body>
		<div class="contenido">
			<div class="formulario">
				<form action="includes/formLogin.php" method="POST">
					<p><h2><align = center> <font color= white> Inicio de sesión </font></h2></p>
					<p><input type="text" name="usuario" placeholder= "Usuario" required > (*)</input> </p>
					<p><input type="password" name="pass" placeholder= "Contraseña" required> (*)</input></p>
					<input type="submit" name="submit" value="Login">
				</form>
			</div>
		</div>
	</body>
</html>

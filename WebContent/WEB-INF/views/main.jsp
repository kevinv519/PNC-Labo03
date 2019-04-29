<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Información personal</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<style>
	body {
		font-family: 'Open Sans', 'sans-serif';
		margin: 1.5em;
	}

	form {
		display: flex;
		flex-direction: column;
		width: 20vw;
		padding: 1em;
		border: solid #3f3f3f 1px;
	}

	button {
		padding: .5rem;
		border: 1px solid transparent;
		font-family: 'Open Sans', 'sans-serif';
		font-size: 1em;
	}

	.form-group {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}

	.help-text {
		color:darkorange;
	}
</style>
</head>
<body>
	<h1>Completa el formulario</h1>	
	<br>
	<form action="${pageContext.request.contextPath}/formInfo" method="post" autocomplete="off">
		<div class="form-group">
			<label for="">Nombre: </label>
			<input type="text" name="name" class="form-control">
		</div>
		<br>
		<div class="form-group">
			<label for="">Apellido: </label>
			<input type="text" name="lastName" class="form-control">
		</div>
		<br>
		<div class="form-group">
			<label for="">Carnet:</label>
			<input type="text" name="carnet" class="form-control">
		</div>
		<br>
		<div class="form-group">
			<label for="">Fecha de nacimiento:</label>
			<input type="text" name="birthDate" class="form-control" placeholder="dd/mm/yyyy">
		</div>
		<br>
		<div class="form-group">
			<label for="">Teléfonos: </label>
			<input type="tel" name="phones" class="form-control" placeholder="Ej: 7777-7777;2222-2222">
		</div>
		<small class="help-text">Separa tus numeros de teléfono con punto y coma ";"</small>
		<small class="help-text">Máximo tres números de teléfono</small>
		<br>
		<button type="submit">Enviar información</button>
	</form>
</body>
</html>
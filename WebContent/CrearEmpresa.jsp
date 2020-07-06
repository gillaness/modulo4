<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
</head>
<body>
	<h2>Crear Empresa</h2>
	
	<form method="post">
		<table>
			<tr>
				<td>Rut Empresa</td>
				<td><input type="text" name="rute"></td>
			</tr>
			<tr>
				<td>Nombre Empresa</td>
				<td><input type="text" name="empresa"></td>
			</tr>

		</table>
		
		<input type="submit" name="crearempresa" value="Crear Empresa">
	
	</form>
	
	
	<br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	
</body>
</html>
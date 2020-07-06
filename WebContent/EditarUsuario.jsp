<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL || Editar Usuarios</title>
</head>
<body>
	<h3>Editar Usuarios</h3>
	
	
	<form action="ModificarUser" method="post">
	<table>
		<tr>
		<td>Selecciona un usuario</td>
		<td><select name="userId">	
		<c:forEach items="${listausers}" var="user">
			<option value="${user.getId()}">${user.getId()}</option>	
		</c:forEach>
			</select></td>
		</tr>
		<tr>
		<td>Nombre</td>
		<td><input type="text" name="nombre" value="${lusuarios.getNombre()}"></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="password" value="${lusuarios.getPassword()}"></td>
		</tr>
		<tr>
		<td>Perfil</td>
		<td><select name="perfil">
				<option value="1">Administrador</option>
				<option value="2">Profesional</option>
				<option value="3">Cliente</option>
		</select></td>
		</tr>
	</table>
		<br>
		<input type="submit" value="Modificar">
	</form>
	
</body>
</html>
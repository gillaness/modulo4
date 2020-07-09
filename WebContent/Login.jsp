<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema APRL</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>APRL Aplicacion Prevención de Riesgos Laborales</h3>
	<br>
	<h3>Bienvenido</h3>
	<h3>Favor ingresa tu usuario y clave de acceso</h3>
	<c:if test="${lmensaje != null}">
	<h3><c:out value="${lmensaje}"></c:out></h3>
</c:if>
	
	<form action="ValidarLogin" method="post">
		<table>
			<tr>
			<td><label for="user">Usuario</label></td>
			<td><input type="text" placeholder="Usuario" name="user"></td>
			</tr>
			<tr>
			<td><label for="pass">Clave</label></td>
			<td><input type="password" placeholder="Contraseña" name="pass"></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Ingresar">
	</form>
	</div>
</body>
</html>
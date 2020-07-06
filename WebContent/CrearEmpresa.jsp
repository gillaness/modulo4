<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
<div class="contenedor">
	<h3>Crear Empresa</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<form action="CrearEmpresa" method="post">
		<table>
			<tr>
				<td>Rut Empresa</td>
				<td><input type="text" name="rute"></td>
			</tr>
			<tr>
				<td>Nombre Empresa</td>
				<td><input type="text" name="empresa"></td>
			</tr>
			<tr>
				<td>Dirección Empresa</td>
				<td><input type="text" name="direccion"></td>
			</tr>
			<tr>
				<td>Contacto Empresa</td>
				<td><input type="text" name="contacto"></td>
			</tr>
			<tr>
				<td>Teléfono Contacto</td>
				<td><input type="text" name="telefono"></td>
			</tr>
			<tr>
				<td>Email contacto</td>
				<td><input type="email" name="correo"></td>
			</tr>

		</table>
		
		<input type="submit" name="crearempresa" value="Crear Empresa">
	
	</form>
	<button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
		Volver
    	</button>
    	<br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>Crear Usuario</h3>
	
	<c:if test="${cumensaje != null}">
	<c:out value="${cumensaje}" />
	</c:if>
	
	<form action="AgregarUser" method="post">
		<table>
			<tr>
				<td>Rut</td>
				<td><input type="text" name="rut"></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>Rol</td>
				<td>
				<select name="perfil">
					<option value="1">Administrador</option>
					<option value="3">Cliente</option>
					<option value="2">Profesional</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>Empresa</td>
				<td>
				<select name="empresa">
				<c:forEach items="${listaempresas}" var="empresa">
					<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
				</c:forEach>
				</select>
				</td>
			</tr>
			

		</table>
		<br>
		<input type="submit" value="Crear Usuario">
		
	</form>
	
		<button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
		Volver
    	</button>
    	<br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>
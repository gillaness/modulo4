<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>Listado de Usuarios del Sistema</h3>
	
<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
</c:if>
	
	<table>
		<tr>
			<th>Nombre</th>
			<th>ID</th>
			<th>Cargo</th>
			<th>Acciones</th>
		</tr>
		
	<c:forEach items="${listausers}" var="user">
		<tr>
			<td>${user.getNombre()}</td>
			<td>${user.getId()}</td>
			<td>${user.getPerfil()}</td>
			
			<td><a href="${pageContext.request.contextPath}/ModificarUser?id=${user.getId()}">Editar</a> &nbsp; <a href="${pageContext.request.contextPath}/BorrarUsuario?id=${user.getId()}">Eliminar</a></td>
			
		</tr>	
	</c:forEach>
		
	</table>
	
	<button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
	Volver
    </button>
    
    <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL</title>
</head>
<body>
	<h3>Listado de Usuarios del Sistema</h3>
	
	<table>
		<tr>
			<th>Nombre</th>
			<th>ID</th>
			<th>Cargo</th>
		</tr>
		
	<c:forEach items="${listausers}" var="user">
		<tr>
			<td>${user.getNombre()}</td>
			<td>${user.getId()}</td>
			<td>${user.getPerfil()}</td>
			
			<td><a href="${pageContext.request.contextPath}/ModificarUser?id=${user.getId()}">Editar</a></td>
			
		</tr>	
	</c:forEach>
		
	</table>
	
	<button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
	Volver
    </button>
	
</body>
</html>
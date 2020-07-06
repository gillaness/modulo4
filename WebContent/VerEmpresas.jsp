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
	<h3>Listado de Empresas Registradas en el Sistema</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
|	</c:if>

	<table>
		<tr>
			<th>Rut Empresa</th>
			<th>Nombre Empresa</th>
			<th>Dirección</th>
			<th>Contacto</th>
			<th>Teléfono</th>
			<th>Email</th>
			<th>Acciones</th>
		</tr>
		
	<c:forEach items="${listaempresas}" var="empresa">
		<tr>
			<td>${empresa.getRutEmpresa()}</td>
			<td>${empresa.getNombreEmpresa()}</td>
			<td>${empresa.getDireccion()}</td>
			<td>${empresa.getContacto()}</td>
			<td>${empresa.getTelefono()}</td>
			<td>${empresa.getMailContacto()}</td>
			
			<td><a href="${pageContext.request.contextPath}/ModificarEmpresa?rut=${empresa.getRutEmpresa()}">Editar</a> &nbsp; <a href="${pageContext.request.contextPath}/BorrarEmpresa?rut=${empresa.getRutEmpresa()}">Eliminar</a></td>
			
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
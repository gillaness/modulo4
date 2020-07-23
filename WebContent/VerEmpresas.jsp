<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	<h3>Listado de Empresas Registradas en el Sistema</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
|	</c:if>

	<!-- <table>
		<tr>
			<th>Rut Empresa</th>
			<th>Nombre Empresa</th>
			<th>Dirección</th>
			<th>Contacto</th>
			<th>Teléfono</th>
			<th>Email</th>
			<th>Acciones</th>
		</tr> -->
		
		<table class="table">
		<thead class="thead-dark">
		<tr>
		<th scope="col">Rut Empresa</th>
        <th scope="col">Nombre Empresa</th>
        <th scope="col">Dirección</th>
        <th scope="col">Contacto</th>
        <th scope="col">Teléfono</th>
        <th scope="col">Email</th>
        <th scope="col">Acciones</th>
        </tr>
        </thead>
		
	<c:forEach items="${listaempresas}" var="empresa">
		<tr>
			<td>${empresa.getRutEmpresa()}</td>
			<td>${empresa.getNombreEmpresa()}</td>
			<td>${empresa.getDireccion()}</td>
			<td>${empresa.getContacto()}</td>
			<td>${empresa.getTelefono()}</td>
			<td>${empresa.getMailContacto()}</td>
			
			<td><a href="${pageContext.request.contextPath}/ModificarEmpresa?rut=${empresa.getRutEmpresa()}">Editar</a> &nbsp;
			<a href="${pageContext.request.contextPath}/BorrarEmpresa?rut=${empresa.getRutEmpresa()}">Eliminar</a></td>
			
		</tr>	
	</c:forEach>
		
	</table>
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Administrador';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
	Volver
    </button> --%>
    
    <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	</div>
	
</body>
</html>
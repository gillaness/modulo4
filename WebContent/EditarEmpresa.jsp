<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL || Editar Empresas</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>Editar Empresas</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<form action="ModificarEmpresa" method="post">
	<table>
		<tr>
		<td><input type="hidden" name="rute" value="${datos.getRutEmpresa()}"></td>
		</tr>
		<tr>
		<td>Nombre Empresa</td>
		<td><input type="text" name="empresa" value="${datos.getNombreEmpresa()}"></td>
		</tr>
		<tr>
		<td>Dirección</td>
		<td><input type="text" name="direccion" value="${datos.getDireccion()}"></td>
		</tr>
		<tr>
		<td>Contacto</td>
		<td><input type="text" name="contacto" value="${datos.getContacto()}"></td>
		</tr>
		<tr>
		<td>Teléfono</td>
		<td><input type="text" name="telefono" value="${datos.getTelefono()}"></td>
		</tr>
		<tr>
		<td>email</td>
		<td><input type="text" name="correo" value="${datos.getMailContacto()}"></td>
		</tr>
	</table>
		<br>
		<input type="submit" value="Modificar">
	</form>
	
	<button onclick="window.location.href='${pageContext.request.contextPath}/ListaEmpresas';">
		Volver
    	</button>
    	
    <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
		</div>
</body>
</html>
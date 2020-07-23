<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="contenedor">
	<h3>Crear Empresa</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<!-- <form action="CrearEmpresa" method="post">
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
				<td>Direcci�n Empresa</td>
				<td><input type="text" name="direccion"></td>
			</tr>
			<tr>
				<td>Contacto Empresa</td>
				<td><input type="text" name="contacto"></td>
			</tr>
			<tr>
				<td>Tel�fono Contacto</td>
				<td><input type="text" name="telefono"></td>
			</tr>
			<tr>
				<td>Email contacto</td>
				<td><input type="email" name="correo"></td>
			</tr>

		</table> -->
		
		<form action="CrearEmpresa" method="post">
    <div class="form-group">
      <label for="rute">Rut Empresa</label>
      <input type="text" class="form-control" placeholder="Rut Empresa" name="rute">
    </div>
    <div class="form-group">
      <label for="empresa">Nombre Empresa</label>
      <input type="text" class="form-control" placeholder="Nombre Empresa" name="empresa">
      </div>
    <div class="form-group">
      <label for="direccion">Direcci�n Empresa</label>
      <input type="text" class="form-control" placeholder="Direcci�n Empresa" name="direccion">
    </div>
    <div class="form-group">
      <label for="contacto">Contacto Empresa</label>
      <input type="text" class="form-control" placeholder="Contacto Empresa" name="contacto">
    </div>
    <div class="form-group">
      <label for="telefono">Tel�fono Contacto</label>
      <input type="text" class="form-control" placeholder="Tel�fono Contacto" name="telefono">
    </div>
    <div class="form-group">
      <label for="correo">Email Contacto</label>
      <input type="email" class="form-control" placeholder="Email contacto" name="correo">
    </div>
		
		<br>
		<button type="submit" class="btn btn-primary" name="crearempresa" value="Crear Empresa">Crear Empresa</button>
		<!-- <input type="submit" name="crearempresa" value="Crear Empresa"> -->
		<br><br>
	
	</form>
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Administrador';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
		Volver
    	</button> --%>
    	
    	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesi�n">Cerrar Sesi�n</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesi�n</a><br/> --%>
	</div>
</body>
</html>
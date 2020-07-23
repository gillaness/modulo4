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
	<h3>Crear Usuario</h3>
	
	<c:if test="${cumensaje != null}">
	<c:out value="${cumensaje}" />
	</c:if>
	
	<%-- <form action="AgregarUser" method="post">
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
			 --%>
			
    <form action="AgregarUser" method="post">
    <div class="form-group">
      <label for="rut">Rut</label>
      <input type="text" class="form-control" placeholder="RUT" name="rut">
    </div>
    <div class="form-group">
      <label for="nombre">Nombre</label>
      <input type="text" class="form-control" placeholder="Nombre" name="nombre">
      </div>
    <div class="form-group">
      <label for="pass">Password</label>
      <input type="password" class="form-control" placeholder="Password" name="pass">
    </div>
    <div class="form-group">
      <label for="perfil">Rol</label>
      <select name="perfil" class="form-control" placeholder="Rol">
					<option value="1">Administrador</option>
					<option value="3">Cliente</option>
					<option value="2">Profesional</option>
	  </select>
    </div>
    <div class="form-group">
      <label for="empresa">Empresa</label>
      <select name="empresa" class="form-control" placeholder="Empresa">
					<c:forEach items="${listaempresas}" var="empresa">
					<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
				</c:forEach>
	  </select>
    </div>

		
		<br>
		<button type="submit" class="btn btn-primary" value="Crear Usuario">Crear Usuario</button>
		<!-- <input type="submit" value="Crear Usuario"> -->
		<br><br>
	</form>
	    <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Administrador';" class="btn btn-primary" value="Volver">Volver</button>
		<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
		Volver
    	</button> --%>
  
    	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	</div>
</body>
</html>
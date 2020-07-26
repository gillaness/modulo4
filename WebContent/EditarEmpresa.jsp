<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL || Editar Empresas</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	<h3>Editar Empresas</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<form action="ModificarEmpresa" method="post">
	<%-- <table>
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
	</table> --%>
	
	<div>
      <input type="hidden" name="rute" value="${datos.getRutEmpresa()}">
    </div>
	  <div class="form-group">
      <label for="empresa">Nombre Empresa</label>
      <input type="text" class="form-control" placeholder="Nombre Empresa" name="empresa" value="${datos.getNombreEmpresa()}">
    </div>
    <div class="form-group">
      <label for="direccion">Dirección</label>
      <input type="text" class="form-control" placeholder="Dirección" name="direccion" value="${datos.getDireccion()}">
    </div>
    <div class="form-group">
      <label for="contacto">Contacto</label>
      <input type="text" class="form-control" placeholder="Contacto" name="contacto" value="${datos.getContacto()}">
    </div>
    <div class="form-group">
      <label for="telefono">Teléfono</label>
      <input type="text" class="form-control" placeholder="Teléfono" name="telefono" value="${datos.getTelefono()}">
    </div>
    <div class="form-group">
      <label for="correo">Email</label>
      <input type="text" class="form-control" placeholder="Email" name="correo" value="${datos.getMailContacto()}">
    </div>
	
		<br>
		<button type="submit" class="btn btn-primary" value="Modificar">Modificar Empresa</button>
		<!-- <input type="submit" value="Modificar"> -->
		<br><br>
	</form>
	
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/ListaEmpresas';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/ListaEmpresas';">
		Volver
    	</button> --%>
    	
    	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
    <%-- <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
		</div> --%>
</body>
</html>
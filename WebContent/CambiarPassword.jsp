<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL || Cambiar Password</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	<h3>Modificar Password</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<form action="CambiarPassword" method="post">
	<%-- <table>
		<tr>
		<td><input type="hidden" name="userId" value="${datos.getId()}"></td>
		</tr>
		<tr>
		<td><input type="hidden" name="nombre" value="${datos.getNombre()}"></td>
		</tr>
		<tr>
		<td><input type="hidden" name="perfil" value="${datos.getPerfil()}"></td>
		</tr>
		<tr>
		<td><input type="hidden" name="empresa" value="${datos.getEmpresa()}"></td>
		</tr>
		<tr>
		<td>Nuevo Password</td>
		<td><input type="password" name="password"></td>
		</tr>
		<tr>
		<td>Confirmar Password</td>
		<td><input type="password" name="password1"></td>
		</tr>
		
	</table> --%>
	
	<div>
      <input type="hidden" name="userId" value="${datos.getId()}">
    </div>
    <div>
      <input type="hidden" name="nombre" value="${datos.getNombre()}">
    </div>
    <div>
      <input type="hidden" name="perfil" value="${datos.getPerfil()}">
    </div>
    <div>
      <input type="hidden" name="empresa" value="${datos.getEmpresa()}">
    </div>
	<div class="form-group">
      <label for="password">Nuevo Password</label>
      <input type="password" class="form-control" placeholder="Nuevo Password" name="password">
      </div>
      <div class="form-group">
      <label for="password1">Confirmar Password</label>
      <input type="password" class="form-control" placeholder="Confirmar Password" name="password1">
      </div>
      
		<br>
		<button type="submit" class="btn btn-primary" value="Cambiar Password">Cambiar Password</button>
		<!-- <input type="submit" value="Cambiar Password"> -->
		<br><br>
	</form>
	
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/ListadoUsers';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/ListadoUsers';">
		Volver
    	</button> --%>
    	
    	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
    <%-- <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL || Editar Usuarios</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	<h3>Editar Usuarios</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	<form action="ModificarUser" method="post">
	<%-- <table>
		<tr>
		<td><input type="hidden" name="userId" value="${datos.getId()}"></td>
		</tr>
		<tr>
		<td>Nombre</td>
		<td><input type="text" name="nombre" value="${datos.getNombre()}"></td>
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
		<tr>
		<td>Perfil</td>
		<td><select name="perfil">
				<option value="1">Administrador</option>
				<option value="2">Profesional</option>
				<option value="3">Cliente</option>
		</select></td>
		</tr>
	</table> --%>
	
	<div>
      <input type="hidden" name="userId" value="${datos.getId()}">
    </div>
	  <div class="form-group">
      <label for="nombre">Nombre</label>
      <input type="text" class="form-control" placeholder="Nombre" name="nombre" value="${datos.getNombre()}">
    </div>
    <div class="form-group">
      <label for="empresa">Empresa</label>
      <select name="empresa" class="form-control" placeholder="Empresa">
      <c:forEach items="${listaempresas}" var="empresa">
					<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
					</c:forEach>
	  </select>
    </div>
    <div class="form-group">
      <label for="perfil">Perfil</label>
      <select name="perfil" class="form-control" placeholder="Perfil">
				<option value="1">Administrador</option>
				<option value="2">Profesional</option>
				<option value="3">Cliente</option>
	  </select>
    </div>
		
		<br>
		<button type="submit" class="btn btn-primary" value="Modificar">Modificar Usuario</button>
		<!-- <input type="submit" value="Modificar"> -->
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
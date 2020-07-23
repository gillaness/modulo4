<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crea Agenda</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

	<h3> Crear Agenda</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
<%-- 	<form action="CrearAgenda" method="post">
	
		<input type="hidden" name="idUser" value="${sessionScope.Profesional.id}">
		Nombre Empresa :
		<select name="empresa">
		<c:forEach items="${listaempresas}" var="empresa">
			<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
		</c:forEach>  
		  
		</select>
		<br>Fecha Visita : <input type="text" name="fecha">
		<br>
		Hora Visita : <input type="text" name="hora">
		<br>
		Tipo Visita:
		<select name = "tipo">
			<option value="1">Asesoría</option>
			<option value="2">Capacitación</option>
			<option value="3">Asesoría Especial</option>
		</select> --%>
		
	<form action="CrearAgenda" method="post">
    <div class="form-group">
      <label for="empresa">Nombre Empresa</label>
      <select name="empresa" class="form-control" placeholder="Nombre Empresa">
      <c:forEach items="${listaempresas}" var="empresa">
			<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
		</c:forEach>
		</select>  
    </div>
    <div class="form-group">
      <label for="fecha">Fecha Visita</label>
      <input type="text" class="form-control" placeholder="Fecha Visita" name="fecha">
      </div>
      <div class="form-group">
      <label for="hora">Hora Visita</label>
      <input type="text" class="form-control" placeholder="Hora Visita" name="hora">
      </div>
    </div>
    <div class="form-group">
      <label for="tipo">Tipo Visita</label>
      <select name="perfil" class="form-control" placeholder="Tipo Visita">
					<option value="1">Asesoría</option>
			        <option value="2">Capacitación</option>
			        <option value="3">Asesoría Especial</option>
	  </select>
    </div>
  
		<br>
		<button type="submit" class="btn btn-primary" name="Crear" value="Crear">Crear Agenda</button>
		<!-- <input type="submit" value="Crear"> -->
		<br><br>
	</form>

        <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Profesional';" class="btn btn-primary" value="Volver">Volver</button>
		<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Profesional';">
		Volver
    	</button>
    --%>
    	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>

</body>
</html>
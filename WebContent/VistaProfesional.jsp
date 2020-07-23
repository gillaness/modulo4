<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear agenda</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">

	<!-- <div class="menu">
	<h3>Menu Profesional</h3>
		<a href="CrearAgenda">Crear Agenda</a>
		<a href="MiAgenda">Ver Agenda</a>
		<a href="#">Crear Capacitacion</a>
		<a href="#">Crear Asesoria</a>
		<br><br> -->
		
		<div class="menu" role="group" aria-label="Button group with nested dropdown">
		<h3>Menú Profesional</h3>
		<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/CrearAgenda';" class="btn btn-secondary" value="CrearAgenda">Crear Agenda</button>
  		<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/MiAgenda';" class="btn btn-secondary" value="MiAgenda">Ver Agenda</button>
  		<button type="submit" class="btn btn-secondary">Crear Capacitacion</button>
  		<button type="submit" class="btn btn-secondary">Crear Asesoria</button>
		<br><br>
		
		<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>

</div>
	
	</div>

</body>
</html>
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
	<h3>Revisar Agenda</h3>
	
		<!-- <table>
			<tr>
				<th>Empresa</th>
				<th>Fecha Visita</th>
				<th>Hora Visita</th>
				<th>Tipo de Visita</th>
				<th>Estado</th>
			</tr> -->
			
		<table class="table">
		<thead class="thead-dark">
		<tr>
		<th scope="col">Empresa</th>
        <th scope="col">Fecha Visita</th>
        <th scope="col">Hora Visita</th>
        <th scope="col">Tipo de Visita</th>
        <th scope="col">Estado</th>
        </tr>
        </thead>
			
			<c:forEach items="${listaagenda}" var="agenda">
			<tr>
				<td>${agenda.getRutEmpresa()}</td>
				<td>${agenda.getFechaVisita()}</td>
				<td>${agenda.getHoraVisita()}</td>
				<td>${agenda.getNombreVisita()}</td>
				<td>${agenda.getEstatus()}</td>
			</tr>
			</c:forEach>
		</table>
	
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Profesional';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Profesional';">
	Volver
    </button> --%>
    
    <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	
</body>
</html>
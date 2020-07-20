<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>APRL</title>
</head>
<body>
	<h3>Revisar Agenda</h3>
	
		<table>
			<tr>
				<th>Empresa</th>
				<th>Fecha Visita</th>
				<th>Hora Visita</th>
				<th>Tipo de Visita</th>
				<th>Estado</th>
			</tr>
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
	<button onclick="window.location.href='${pageContext.request.contextPath}/Profesional';">
	Volver
    </button>
    
    <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	
</body>
</html>
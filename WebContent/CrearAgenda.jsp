<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crea Agenda</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>

	<h3> Crear Agenda</h3>
	
	<c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
	</c:if>
	
	
	<form action="CrearAgenda" method="post">
	
		<input type="hidden" name="idUser" value="${sessionScope.Profesional.id}">
		Nombre Empresa :
		<select name="empresa">
		<c:forEach items="${listaempresas}" var="empresa">
			<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
		</c:forEach>  
		  
		</select>
		<br>	
		Fecha Visita : <input type="text" name="fecha">
		<br>
		Hora Visita : <input type="text" name="hora">
		<br>
		Tipo Visita:
		<select name = "tipo">
			<option value="1">Asesor�a</option>
			<option value="2">Capacitaci�n</option>
			<option value="3">Asesor�a Especial</option>
		</select>
		<br>
		<input type="submit" value="Crear">
	</form>

		<button onclick="window.location.href='${pageContext.request.contextPath}/Profesional';">
		Volver
    	</button>
    	<br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesi�n</a><br/>

</body>
</html>
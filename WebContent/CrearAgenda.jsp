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
	<div class="contenedor">
	<h3> Crear Agenda</h3>
	<form action="CrearAgenda" method="post">
	
		Nombre Empresa :
		<select name="empresa">
		<c:forEach items="${listaempresas}" var="empresa">
			<option value="${empresa.getRutEmpresa()}">${empresa.getNombreEmpresa()}</option>
		</c:forEach>  
		  
		</select>
		<br>	
		Fecha Visita : <input type="text" name="visita">
		<br>
		Hora Visita : <input type="text" name="hora">
		<br>
	
		OK <input type="checkbox" ><br>
		
		
		<input type="submit" value="Aceptar">
	</form>
	</div>

</body>
</html>
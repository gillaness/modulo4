<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear asesoria</title>
</head>
<body>
	<h1>Crear Asesoria</h1>
	<form action="Agenda" method="post">

		Nombre Empresa : <select name="empresa">
			<option value="1">Empresa 1</option>
			<option value="2">Empresa 2</option>
			<option value="3">Empresa 3</option>
		</select> <br> 
	</form>
<jsp:useBean id="date" class="java.util.Date"/>
Fecha Visita 1: <fmt:formatDate value="${datosusuario.getfechaVisita()}" type="date" pattern="dd-MMM-yyyy"/>
<br>



		<br>  <br>Check para aceptar <br> OK <input
			type="checkbox"><br> <input type="submit"
			value="Aceptar">

	

</body>
</html>
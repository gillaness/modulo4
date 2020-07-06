<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crea Agenda</title>
</head>
<body>
	<h1> Crear Agenda</h1>
	<form action="Agenda" method="post">
	
		Nombre Empresa :
<select name="empresa">
   <option value="1">Empresa 1</option> 
   <option value="2">Empresa 1</option> 
   <option value="3">Empresa 2</option>
</select>
		<br>	
		Fecha Visita : <input type="text" name="visita">
		<br>
		Hora Visita : <input type="password" name="hora">
		<br>
	
		OK <input type="checkbox" ><br>
		
		
		<input type="submit" value="Aceptar">
	</form>


</body>
</html>
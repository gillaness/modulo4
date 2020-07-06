<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
</head>
<body>
	 <h2>Crear Reporte de Accidentes</h2>   
	 
     <form method="post">
		<table>
			<tr>
				<td>Nombre Accidentado: </td>
				<td><input type="text" name="accidentado"></td>
			</tr>
			<tr>
				<td>Fecha Accidente: </td>
				<td><input type="text" name="fechaaccidente"></td>
			</tr>
			<tr>
				<td>Hora Accidente: </td>
				<td><input type="text" name="horaaccidente"></td>
			</tr>
			<tr>
				<td>Área Accidente: </td>
				<td><input type="text" name="area"></td>
			</tr>		
			<tr>
				<td>Descripción de Accidente: </td>
				<td><textarea name="detalleaccidente" cols="50" rows="15" placeholder="Favor escribe aquí los detalles del accidente"></textarea></td>
			</tr>


		</table>
		
		<input type="submit" name="reporteaccidente" value="Enviar Reporte de Accidente">
	
	</form>
	
	
</body>
</html>
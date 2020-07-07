<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	 <h3>Crear Reporte de Accidentes</h3>   
	 
     <form method="post" action="CrearRegistroAccidente">
     
     <input type="hidden" name="idUser" value="${sessionScope.Cliente.id}">
			<input type="hidden" name="idEmpresa" value="76767676">
     
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
				<td>Tipo Accidente: </td>
				<td><select name="tipo">
					<option value="1">Leve</option>
					<option value="2">Grave</option>
					<option value="3">Fatal</option>
					</select>
				</td>
			</tr>			
			<tr>
				<td>Descripción de Accidente: </td>
				<td><textarea name="detalleaccidente" cols="50" rows="15" placeholder="Favor escribe aquí los detalles del accidente"></textarea></td>
			</tr>
			
			


		</table>
		
		<input type="submit" name="reporteaccidente" value="Enviar Reporte de Accidente">
	
	</form>
	
	<br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>
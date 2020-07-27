<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	 <h3>Crear Reporte de Accidentes</h3>   
	 
     <form method="post" action="CrearRegistroAccidente">
     
<%--      	<input type="hidden" name="idUser" value="${sessionScope.Cliente.id}"> <!-- Rescata el id del cliente de esta sesion --> --%>
<%-- 		<input type="hidden" name="idEmpresa" value="${sessionScope.Cliente.empresa}"> <!-- Empresa a la que pertenece el usuario Cliente que reporta el accidente --> --%>
     
		<!-- <table>
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
			
		</table> -->
		
    <div class="form-group">
      <label for="accidentado">Nombre Accidentado</label>
      <input type="text" class="form-control" placeholder="Nombre Accidentado" name="accidentado">
    </div>
    <div class="form-group">
      <label for="fechaaccidente">Fecha Accidente</label>
      <input type="text" class="form-control" placeholder="Fecha Accidente" name="fechaaccidente">
      </div>
    <div class="form-group">
      <label for="horaaccidente">Hora Accidente</label>
      <input type="text" class="form-control" placeholder="Hora Accidente" name="horaaccidente">
    </div>
    <div class="form-group">
      <label for="area">Área Accidente</label>
      <input type="text" class="form-control" placeholder="Área Accidente" name="area">
    </div>
    <div class="form-group">
      <label for="tipo">Tipo Accidente</label>
      <select name="tipo" class="form-control" placeholder="Tipo Accidente">
					<option value="1">Leve</option>
					<option value="2">Grave</option>
					<option value="3">Fatal</option>
	  </select>
    </div>
    <!-- <div class="form-group">
      <label for="detalleaccidente">Descripción de Accidente</label>
      <input type="text" class="form-control" placeholder="Favor escribe aquí los detalles del accidente. (Descripción de Accidente.)" name="detalleaccidente" cols="50" rows="15">
    </div> -->
    
    <div class="was-validated">
    <div class="mb-3">
    <label for="detalleaccidente">Descripción de Accidente</label>
    <textarea type="text" class="form-control is-invalid" id="detalleaccidente" placeholder="Descripción de Accidente" required></textarea>
    <div class="invalid-feedback">
      Favor escribir los detalles del accidente...
    </div>
    </div>
    </div>
		
		<button type="submit" class="btn btn-primary" name="reporteaccidente" value="Enviar Reporte de Accidente">Enviar Reporte de Accidente</button>
		<!-- <input type="submit" name="reporteaccidente" value="Enviar Reporte de Accidente"> -->
	
	</form>
	
	<br>
	 <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Cliente';" class="btn btn-primary" value="Volver">Volver</button>
	<%-- <button onclick="window.location.href='${pageContext.request.contextPath}/Cliente';">
	Volver
    </button> --%>
	
	<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button>
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	</div>
</body>
</html>
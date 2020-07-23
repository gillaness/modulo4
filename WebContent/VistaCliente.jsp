<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Vista Cliente</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="contenedor">
	 <h3>Selecciona una de las siguientes opciones</h3>   
               <%--  <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/CrearRegistroAccidente">Crear Reporte de Accidetentes</a><td>
                </table> --%>
                
        <div class="sso" role="group" aria-label="Button group with nested dropdown">
		<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/CrearRegistroAccidente';" class="btn btn-secondary" value="Crear Reporte de Accidetentes">Crear Reporte de Accidetentes</button>
		<br><br>
                
        
        <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Logout';" class="btn btn-primary" value="Cerrar Sesión">Cerrar Sesión</button> 
		<%-- <a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/> --%>
	</div>
</body>
</html>
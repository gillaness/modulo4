<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Vista Cliente</title>
</head>
<body>
	<div class="contenedor">
	 <h3>Selecciona una de las siguientes opciones</h3>   
	 
                <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/CrearRegistroAccidente">Crear Reporte de Accidetentes</a><td>
                </table>
                
         <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
</head>
<body>
	 <h2>MANTENCION USUARIOS</h2>   
	 
                <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/CrearUser">Crear Usuario</a><td>
                    <td><a href="${pageContext.request.contextPath}/ModificarUser">Modificar Usuarios</a><td>
                    <td><a href="#">Eliminar Usuarios</a><td>
                    <td><a href="${pageContext.request.contextPath}/ListadoUsers">Ver Usuarios</a><td>
                    </tr>
                </table>
                
    	<h2>MANTENCION CLIENTES</h2> 
                <table>
                    <tr>
                    <td><a href="#">Crear Cliente</a><td>
                    <td><a href="#">Modificar Cliente</a><td>
                    <td><a href="#">Eliminar Cliente</a><td>
                    <td><a href="#">Ver Cliente</a><td>
                    </tr>
                </table>
	
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
</head>
<body>
	 <h2>Mantencion Usuarios del Sistema</h2>   
	 
                <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/AgregarUser">Crear Nuevo Usuario</a><td>
                    <td><a href="${pageContext.request.contextPath}/ListadoUsers">Ver Listado de Usuarios</a><td>
                    </tr>
                </table>
                
    	<h2>Mantencion de Clientes Empresas</h2> 
                <table>
                    <tr>
                    <td><a href="#">Crear Nuevo Cliente Empresa</a><td>
                    <td><a href="#">Ver Listado de Clientes Empresa</a><td>
                    </tr>
                </table>
                
         <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	
</body>
</html>


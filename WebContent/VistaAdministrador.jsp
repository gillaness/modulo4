<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	 <h3>Mantencion Usuarios del Sistema</h3>   
	 
                <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/AgregarUser">Crear Nuevo Usuario</a><td>
                    <td><a href="${pageContext.request.contextPath}/ListadoUsers">Ver Listado de Usuarios</a><td>
                    </tr>
                </table>
                
    	<h3>Mantencion de Clientes Empresas</h3> 
                <table>
                    <tr>
                    <td><a href="${pageContext.request.contextPath}/CrearEmpresa">Crear Nuevo Cliente Empresa</a><td>
                    <td><a href="${pageContext.request.contextPath}/ListaEmpresas">Ver Listado de Clientes Empresa</a><td>
                    </tr>
                </table>
                
         <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>


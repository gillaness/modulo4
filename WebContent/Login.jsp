<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema APRL</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<%-- <body>
	<div class="contenedor">
	<h3>APRL Aplicacion Prevención de Riesgos Laborales</h3>
	<br>
	<h3>Bienvenido</h3>
	<h3>Favor ingresa tu usuario y clave de acceso</h3>
	<c:if test="${lmensaje != null}">
	<h3><c:out value="${lmensaje}"></c:out></h3>
</c:if>
	
	<form action="ValidarLogin" method="post">
		<table>
			<tr>
			<td><label for="user">Usuario</label></td>
			<td><input type="text" placeholder="Usuario" name="user"></td>
			</tr>
			<tr>
			<td><label for="pass">Clave</label></td>
			<td><input type="password" placeholder="Contraseña" name="pass"></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Ingresar">
	</form>
	</div>
</body> --%>

<body>
	<div class="contenedor">
	<h3>APRL Aplicacion Prevención de Riesgos Laborales</h3>
	<br>
	<h3>Bienvenido</h3>
	<h3>Favor ingresa tu Usuario y Clave de acceso</h3>
	<c:if test="${lmensaje != null}">
	<h3><c:out value="${lmensaje}"></c:out></h3>
</c:if>
  <form action="ValidarLogin" method="post">
    <div class="form-group">
      <label for="user">Usuario</label>
      <input type="text" class="form-control" placeholder="Usuario" name="user">
    </div>
    <div class="form-group">
      <label for="pass">Password</label>
      <input type="password" class="form-control" placeholder="Password" name="pass">
    </div>
    <div class="form-group">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          ¿Quiere mantener la sesión iniciada?
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary" value="Ingresar">Ingresar</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="https://i.makeagif.com/media/2-11-2016/T17EEh.gif">¿Nuevo por aquí?, Regístrate.</a>
  <a class="dropdown-item" href="https://media.tenor.com/images/e2594372cddbb9263385aeb5369cddc1/tenor.gif">¿Se te olvidó tu contraseña?, Te ayudamos.</a>
</div>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>APRL || Registro</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

<div class="contenedor">
	<h3>Registro APRL</h3>
<br>	
<p>Estimado(a) cliente:
<br>
1.- Ingrese sus datos de contacto.<br>
2.- Presione el botón "Registrarse" para inscribir su información.<br>
3.- Le enviaremos al correo electrónico un link para que active su cuenta.<br>
<br>
"Es importante que ingrese una dirección de correo electrónico válida, pues será el principal canal de comunicaciones que tendremos con usted."</p>


<form>
<div class="form-row">
    <div class="col">
    <label for="nombres">Nombre</label>
      <input type="text" class="form-control" placeholder="Nombre">
    </div>
    <div class="col">
    <label for="apellido">Apellido</label>
      <input type="text" class="form-control" placeholder="Apellido">
    </div>
  </div>
  <br>
  <div class="form-row">
      <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="name@example.com">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="******">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Teléfono Contacto</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="+56 1 2345 6789">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Dirección Empresa</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Abc Defghi Jklm #1234">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Ciudad</label>
      <input type="text" class="form-control" id="Ciudad" placeholder="Ciudad">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Región</label>
      <select id="inputState" class="form-control">
        <option selected>Región</option>
        <option value="1">Región de Arica y Parinacota</option>
        <option value="2">Región de Tarapacá</option>
        <option value="3">Región de Antofagasta</option>
        <option value="4">Región de Atacama</option>
        <option value="5">Región de Coquimbo</option>
        <option value="6">Región de Valparaíso</option>
        <option value="7">Región Metropolitana de Santiago</option>
        <option value="8">Región del Libertador General Bernardo O’Higgins</option>
        <option value="9">Región del Maule</option>
        <option value="10">Región del Ñuble</option>
        <option value="11">Región del Biobío</option>
        <option value="12">Región de La Araucanía</option>
        <option value="13">Región de Los Ríos</option>
        <option value="14">Región de Los Lagos</option>
        <option value="15">Región de Aysén del General Carlos Ibáñez del Campo</option>
        <option value="16">Región de Magallanes y la Antártica Chilena</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Código Postal</label>
      <input type="text" class="form-control" id="inputZip" placeholder="123456">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Declaro que la información entregada es verdadera.
      </label> 
      <br><p> "En caso de comprobarse por la autoridad
					correspondiente la falsedad en la declaración de la información
					entregada u otra acción ilícita, se expone a las sanciones penales
					previstas en la ley."</p>
	</div>
  </div>
</form>

<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Login';" class="btn btn-primary" value="Volver">Registrarse</button>
</div>

<br>
  <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Login';" class="btn btn-primary" value="Volver">Volver</button>

</body>
</html>
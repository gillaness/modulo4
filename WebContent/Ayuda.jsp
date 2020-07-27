<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>APRL || Ayuda</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

<div class="contenedor">
	<h3>Ayuda APRL</h3> 
	<br>	
<p>Estimado(a) cliente:
<br>
1.- Ingrese su Rol Único Tributario. (RUT)<br>
2.- Presione el botón "Enviar" para registrar su información.<br>
3.- Según él medio de comunicación seleccionado, enviaremos un link para que recuperé su clave.<br>
<br>
"Es importante que ingrese su RUT y la dirección de Correo Electrónico con el cuál fue inscrito en nuestro Sistema, pues serán nuestros principales medios de validación que tendremos de usted."</p>
	
	
<form>
<div class="form-group">
    <label for="exampleInputEmail1">Rut</label>
    <input type="text" class="form-control" id="exampleInputRut1" aria-describedby="RutHelp" placeholder="Ingresa sin puntos ni guiones">
    <small id="emailHelp" class="form-text text-muted">"Nunca compartiremos su número de identificación con nadie más."</small>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Dirección de correo electrónico</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="name@example.com">
    <small id="emailHelp" class="form-text text-muted">"Nunca compartiremos su correo electrónico con nadie más."</small>
  </div>

  <div class="form-group">
    <label for="exampleFormControlSelect1">Seleccionar comunicación</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option selected>Medio de comunicación...</option>
      <option value="1">LLamada telefónica</option>
      <option value="2">Correo electrónico (E-mail)</option>
      <option value="3">Mensaje de texto (SMS)</option>
      <option value="4">Mensaje WhatsApp</option>
      <option value="5">Señales de humo</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Mensaje</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  
  <!-- <button type="submit" class="btn btn-primary">Enviar</button> -->
</form>

<button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Login';" class="btn btn-primary" value="Volver">Enviar</button>
  
  <br><br>
  <button type="submit" onclick="window.location.href='${pageContext.request.contextPath}/Login';" class="btn btn-primary" value="Volver">Volver</button>
</form>

</body>
</html>
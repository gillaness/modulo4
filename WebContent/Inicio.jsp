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
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Inicio.jsp">APRL</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Nosotros.jsp">Nosotros<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Galeria.jsp">Servicios</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="/Diagramas" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Diagramas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/APRL/Diagramas/Diagrama de secuencia Administrador.pdf">Secuencia Administrador</a>
          <a class="dropdown-item" href="/APRL/Diagramas/Diagrama de secuencia Profesional.pdf">Secuencia Profesional</a>
          <a class="dropdown-item" href="/APRL/Diagramas/Diagrama de secuencia Cliente.pdf">Secuencia Cliente</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="/APRL/Diagramas/Diagrama de caso de uso APRL.pdf">Caso de uso APRL</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.jsp" tabindex="-1" aria-disabled="true">Iniciar Sesión</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>

<br>
<h2>PROPÓSITO<h2>
<p>APRL, es una empresa que se dedica a la asesoría en prevención de riesgos laborales y ambientales, ajustándose a las necesidades de cada cliente y siempre estamos buscando entregar el mejor servicio para que se cumplan los requisitos legales aplicables y los objetivos propuestos en seguridad y salud ocupacional.</p>
 
<h3>MISIÓN<h3>
<p>Ser una empresa, que contribuye a un ambiente de trabajo libre de riesgos de accidente.</p>
 
<h3>VISIÓN<h3>
<p>Ser una empresa líder en la entrega de servicios de asesorías en prevención de riesgos laborales con los más altos estándares de calidad.</p>


<img src="https://i.gifer.com/TyxC.gif" class="img-fluid" alt="Responsive image">

</body>
</html>
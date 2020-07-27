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
<div class="card-deck">
  <div class="card">
    <img src="https://sustempo.com/website/wp-content/uploads/2017/07/gopes_caidas_laboral.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">ASESORÍA EN LA CREACIÓN O MEJORA DEL PLAN DE EMERGENCIA EMPRESAS</h5>
      <p class="card-text">El Código del Trabajo art. 184: El empleador estará obligado a tomar todas las medidas necesarias para proteger eficazmente la vida y salud de los trabajadores.
El Decreto Supremo 594 art 44: En todo lugar de trabajo deberán implementarse las medidas necesarias para la prevención de incendios con el fin de disminuir la posibilidad de inicio de un fuego, controlando las cargas combustibles y las fuentes de calor e inspeccionando las instalaciones a través de un programa preestablecido.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Desde 2,31 UF la jornada.</small>
    </div>
  </div>
  <div class="card">
    <img src="https://huelvaya.es/wp-content/uploads/2019/05/accidentes-laborales.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">ASESORÍA PARA LA CERTIFICACIÓN EN SISTEMAS INTEGRADOS DE GESTIÓN</h5>
      <p class="card-text">Sistemas de Gestión Integrados. La integración de sistemas más común es la de los relativos a calidad, medio ambiente, seguridad y salud en el trabajo y seguridad alimentaria  según ISO 9001, ISO 14001, 45001, ISO 22000 respectivamente, pero no son las únicas normas.
      <br>
      <br>• Implementación Sistemas de Gestión ISO. 
      <br>• Mantenimiento Sistema de Gestión ISO.
      <br>• Auditoria Interna Sistema de Gestión ISO.
      <br>• CALIDAD ISO  9.001
      <br>• SEGURIDAD ISO 45.001
      <br>• MEDIO AMBIENTE ISO 14.001
      <br>• SEGURIDAD ALIMENTARIA ISO 22.000</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Desde 3,12 UF la jornada.</small>
    </div>
  </div>
  <div class="card">
    <img src="https://ugteuskadi.net/wp-content/uploads/2018/10/imagenobras.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">ASESORÍA EN LA CONSTITUCIÓN Y FUNCIONAMIENTO DE COMITÉ PARITARIOS</h5>
      <p class="card-text">COMITÉ PARITARIO
“En toda empresa, faena, sucursal o agencia en que trabajen más de 25 personas contratadas. Se organizarán Comités Paritarios de Higiene y Seguridad".
El Comité Paritario Higiene y Seguridad, es un equipo de trabajo, formado por representantes de la dirección y de los trabajadores, quienes se integran con el propósito de encontrar soluciones y mejoras efectivas en los ámbitos de: La Protección de las Personas. La Seguridad de toda la Empresa.
<br><br>
Servicios :
<br>• Asesoría en la constitución del comité paritario.
<br>• Capacitación a la gerencia.
<br>• Capacitación a los integrantes del comité paritario.
<br>• Plan de trabajo del comité paritario.
<br>• Programa de trabajo comité paritario.
</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Desde $572.764 pesos mensuales.</small>
    </div>
  </div>
</div>

</body>
</html>
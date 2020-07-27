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
<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="https://pbs.twimg.com/profile_images/513080044328341504/L141dNiP_400x400.jpeg" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Germán Illanes</h5>
        <p class="card-text">Ingeniero Civil Industrial. Participante del Bootcamp Talento Digital para Chile, Desarrollador Full Stack Java Trainee. Considera que el trabajo, en todas sus manifestaciones, es uno de los deberes y uno de los derechos esenciales del hombre y el medio más eficaz para el desenvolvimiento de la personalidad, contribuyendo con ello al progreso social.
Dentro del proyecto APRL mis responsabilidades, fueron: ser encargado de la programación en JS y pluggins JQuery y ademas de aportar con el formato de estilo en CSS.
</p>
        <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
        <a href="#" class="btn btn-primary">LinkedIn</a>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="https://www.ecestaticos.com/imagestatic/clipping/fd3/69b/fd369bbc53d140bc2623d8d0ef9649a7/asi-es-el-putero-espanol-el-sexo-es-de-pago-pero-el-matrimonio-sale-mas-caro.jpg?mtime=1579565836" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Carlos Quintanilla</h5>
        <p class="card-text">Carlos Quintanilla Rojas, Ingeniero en Informática. Dedicado y estar al día en cuanto a conocimientos del área TI. Actualmente participante activo del programa Talento Digital para Chile, Full Stack Java Trainee. Mis metas son día a día, estar en constante aprendizaje. Hemos formado un gran equipo dándole un valor agregado al trabajo y desarrollo de este proyecto, que va en ayuda de la comunidad. Estructurar el contenido,traducir el diseño de un sitio, transiciones y cambios en la aplicación del estilo visual.
</p>
       <!--  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
        <a href="#" class="btn btn-primary">LinkedIn</a>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="https://i2.wp.com/pousta.com/wp-content/uploads/2017/11/cocaina-vegano.jpg?fit=1280%2C720&ssl=1" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Luis Torres</h5>
        <p class="card-text">Ingeniero Civil Industrial. Diplomado en Evaluación de decisiones estratégicas.(PUC). Actualmente participante activo del programa Talento Digital para Chile -Bootcamp-. Comprometido con la transformación digital y el cambio social, destinado a mejorar la calidad de vida de las personas, que asegure el ideal de un ser humano feliz, tanto en sus derechos sociales y económicos.
Al momento de asumir un rol dentro del proyecto, tome la responsabilidad de: creador de contenidos (Copywrite), asegurar la accesibilidad al sitio (User Experience), controlar los formatos del diseño y la interactividad (Maquetador/Desarrollador).
</p>
        <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
        <a href="#" class="btn btn-primary">LinkedIn</a>
      </div>
    </div>
  </div>
</div>

</body>
</html>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%
HttpSession misession= (HttpSession) request.getSession();
String usuario= (String) misession.getAttribute("usuario");  
if(misession == null || misession.getAttribute("usuario") == null){
      out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.1.0/css/bootstrap.min.css\" type=\"text/css\" />");
      out.println("<center>");           
      out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
      out.println("<a class='btn btn-primary' href='/WebSistema/index.html'>Ir a pagina de acceso</a>");
      out.println("</center>");
      return;
  }    
%>

<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
    <center>
        <div class="list-group jumbotron jumbotron-fluid mt-4">

            <h5 class="display-100 alert alert-success">OPCIONES DISPONIBLES</h5>
            <div class="alert alert-warning" role="alert">
                <h4>Mantenimientos</h4>
                <a href="/WebSistema/controladorPrincipal?accion=listadoAreas" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Areas</a>
                <a href="ListarAlumnos.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Alumnos</a>
                <a href="listarCursos.jsp" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Cursos</a>
                
            </div>
        </div>
    </center>
</body>
</html>


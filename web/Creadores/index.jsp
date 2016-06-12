<%@page import="accesodato.Coneccion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Starter Template for Bootstrap</title>
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../Inicio">Prueba3 Progra2</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../Inicio">Inicio</a></li>
                        <li class="active"><a href="../Creadores">Creadores</a></li>
                        <li><a href="../Lenguajes_Programacion">Lenguajes_Programación</a></li>
                        <li><a href="../Nacionalidades">Nacionalidades</a></li>
                        <li><a href="../Usuarios">Usuarios</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <br><br><br>
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tabla Creadores</h3>
                    </div>
                    <div class="panel-body">
                            <a href="crear.jsp" class="btn btn-primary">Nuevo Creador</a>
                            <br><br>
                            <b>Buscar por Nombre: </b><input type="text" name="buscarNombre">  <input type="submit" class="btn btn-danger" value="Buscar">
                            <br><br>
                            <table class="table table-condensed table-hover table-bordered">
                                <thead>
                                <th>Creador_id</th>
                                <th>Nombre</th>
                                <th>1er Apellido</th>
                                <th>2do Apellido</th>
                                <th>Nacionalidad_id</th>
                                <th>Acciones</th>
                                </thead>
                                <tbody>
                            <%
                                Coneccion con = new Coneccion();
                                if (request.getParameter("buscarNombre") != null) {
                                    if (request.getParameter("buscarNombre").isEmpty()) {
                                        con.setConsulta("select * from Creadores where estado='activo'");
                                    } else {
                                        String nombre = request.getParameter("buscarNombre");
                                        con.setConsulta("select * from Creadores where nombre like '%" +nombre+ "%' and estado='activo'");
                                    }
                                } else {
                                    con.setConsulta("select * from Creadores where estado='activo'");
                                }
                            %>
                            <% con.setConsulta("select creadores.creador_id,creadores.nombre,creadores.apepat,creadores.apemat,creadores.nacionalidad_id from creadores,nacionalidades where creadores.nacionalidad_id=nacionalidades.nacionalidad_id and creadores.estado='activo'");%>
                            <% while (con.getResultado().next()) { 
                                
                            out.println("<tr>");
                                
                                    out.println("<td>" + con.getResultado().getString("creador_id") + "</td>");
                                    out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                                    out.println("<td>" + con.getResultado().getString("apepat") + "</td>");
                                    out.println("<td>" + con.getResultado().getString("apemat") + "</td>");
                                    out.println("<td>" + con.getResultado().getString("nacionalidad_id") + "</td>");
                                    out.println("<td>" + "<a href='../ServletCreador?eliminar=" + con.getResultado().getString("creador_id") + "'>Eliminar</a>" + "</td>");
                                    out.println("<td>" + "<a href='editar.jsp?creador_id=" + con.getResultado().getString("creador_id") + "'>Editar</a>" + "</td>");
                                

                            out.println("</tr>");
                             }%>
                        </tbody>
                            </table>
                            <a href="../Inicio" class="btn btn-danger">Volver</a>                     
                    </div>
                </div>
            </div>
        </div><!-- /.container -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>

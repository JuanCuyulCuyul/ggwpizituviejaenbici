<%@page import="negocio.Usuario"%>
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
        <title>Usuarios</title>
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
                    <a class="navbar-brand" href="../Inicio">Prueba4 Progra2</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../Inicio">Inicio</a></li>
                        <li><a href="../Creadores">Creadores</a></li>
                        <li><a href="../Lenguajes_Programacion">Lenguajes_Programación</a></li>
                        <li><a href="../Nacionalidades">Nacionalidades</a></li>
                        <li class="active"><a href="../Usuarios">Usuarios</a></li>
                        <li><a href="../Ciudades">Ciudades</a></li>
                        <li><a href="../Paises">Paises</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <br><br><br>
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tabla Usuarios</h3>
                    </div>
                    <div class="panel-body">
                        <a href="crear.jsp" class="btn btn-primary">Nuevo Usuario</a>
                        <a href="MostrarReporte.jsp" class="btn btn-primary">Ver Reportes</a>
                        <br><br>
                        <form method="post" action="index.jsp">
                            <b>Buscar por Usuario: </b><input type="text" name="buscarUsuario"> 
                            <input type="submit" class="btn btn-danger" value="Buscar">
                        </form>
                        <br>
                        <table class="table table-condensed table-hover table-bordered">
                            <thead>
                            <th>Usuario_ID</th>
                            <th>Usuario</th>
                            <th>Clave</th>
                            <th>Fecha_Nacimiento</th>
                            <th>Ciudad_ID</th>
                            <th>Acciones</th>
                            <th></th>
                            </thead>
                            <tbody>
                                <%
                                    Coneccion con = new Coneccion();
                                    if (request.getParameter("buscarUsuario") != null) {
                                        if (request.getParameter("buscarUsuario").isEmpty()) {
                                            con.setConsulta("select * from Usuarios where estado='activo'");
                                        } else {
                                            String usuario = request.getParameter("buscarUsuario");
                                            con.setConsulta("select * from Usuarios where usuario like '%" + usuario + "%' and estado='activo'");
                                        }
                                    } else {
                                        con.setConsulta("select * from Usuarios where estado='activo'");
                                    }
                                %>
                                <% while (con.getResultado().next()) { %>
                                <tr>
                                    <%
                                        out.println("<td>" + con.getResultado().getString("usuario_id") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("usuario") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("clave") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("fecha_nacimiento") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("ciudad_id") + "</td>");
                                        out.println("<td>"+"<a href='../ServletSolido?eliminar="+con.getResultado().getString("usuario_id")+"' class='btn btn-danger'>Eliminar</a>"+"</td>");
                                        out.println("<td>"+"<a href='editar.jsp?editar="+con.getResultado().getString("usuario_id")+"' class='btn btn-primary'>Editar</a>"+"</td>");


                                    %>

                                </tr>
                                <% }%>
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

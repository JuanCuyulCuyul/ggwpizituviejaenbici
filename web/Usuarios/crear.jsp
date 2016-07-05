    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="accesodato.Coneccion"%>
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
                        <a class="navbar-brand" href="../Inicio">Prueba3 Progra2</a>
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
                    </div>
                </div>
            </nav>
            <div class="container">
                <br><br><br>
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Crear Usuarios</h3>
                        </div>
                        <div class="panel-body">
                            <form method="POST" action="../ServletSolido">
                                <div class="form-group">
                                    <label for="usuario">Usuario</label>
                                    <input type="text" class="form-control" name="usuario" placeholder="Ingresar Usuario">
                                </div>
                                <div class="form-group">
                                    <label for="clave">Clave</label>
                                    <input type="text" class="form-control" name="clave"  placeholder="Ingresar Clave">
                                </div>
     
                                <div class="form-group">
                                    <label for="fecha_nacimiento">Fecha_nacimiento</label>
                                    <input type="text" class="form-control" name="fecha_nacimiento" placeholder="Ingresar Fecha_Nacimiento">
                                </div>
                                <div class="form-group">
                                <label for="ciudad_id">Seleccionar Ciudad_ID</label>
                                <select class="form-control" name="ciudad_id" id="Ciudad_id">
                                    <%
                                       Coneccion con=new Coneccion();
                                       con.setConsulta("select * from ciudades");
                                       while(con.getResultado().next()){
                                         out.println("<option value='"+con.getResultado().getString("ciudad_id")+"'>"+con.getResultado().getString("nombre")+"</option>");
                                         %>
                                     <%}%>
                                </select>
                            </div>
                                <button type="submit" class="btn btn-danger" name="guardar">Guardar</button>
                                <a href="../Inicio" class="btn btn-danger">Volver</a>                          
                            </form>
                        </div>
                    </div>
                </div>
     
            </div><!-- /.container -->

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            
            <script src="../template/js/bootstrap.min.js"></script>
        </body>
    </html>


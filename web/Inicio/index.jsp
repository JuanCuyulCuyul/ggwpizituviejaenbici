<%@page import="accesodato.Coneccion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Inicio</title>
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
                        <li class="active"><a href="../Inicio">Inicio</a></li>
                        <li><a href="../Creadores/index.jsp">Creadores</a></li>
                        <li><a href="../Lenguajes_Programacion/index.jsp">Lenguajes_Programación</a></li>
                        <li><a href="../Nacionalidades/index.jsp">Nacionalidades</a></li>
                        <li><a href="../Usuarios/index.jsp">Usuarios</a></li>
                        <li><a href="../Ciudades/index.jsp">Ciudades</a></li>
                        <li><a href="../Paises/index.jsp">Paises</a></li>
                        <li><a href="../ServletLogin?fuera=si">Cerrar Sesion</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <br><br><br>
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Menu Principal</h3>
                    </div>
                    <div class="panel-body">
                        <h2>Bienvenido al modulo principal</h2>
                        <hr>
                        <h4><b>Tablas</b></h4>

                        <a href="../Creadores">1.- Creadores</a>
                        <br>
                        <a href="../Lenguajes_Programacion">2.- Lenguajes_Programacion</a>
                        <br>
                        <a href="../Nacionalidades">3.- Nacionalidades</a>
                        <br>
                        <a href="../Usuarios">4.- Usuarios</a>
                        <br>
                        <a href="../Ciudades">5.- Ciudades</a>
                        <br>
                        <a href="../Paises">6.- Paises</a>
                        <br><br>
                    </div>                 
                </div>
               
            </div>
        </div><!-- /.container -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>

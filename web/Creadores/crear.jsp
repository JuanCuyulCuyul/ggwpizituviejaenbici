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
                        <h3 class="panel-title">Crear Creador</h3>
                    </div>
                    <div class="panel-body">
                        <form method="POST" action="../ServletCreador">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" placeholder="Ingresar Nombre">
                            </div>
                            <div class="form-group">
                                <label for="apepat">1er Apellido</label>
                                <input type="text" class="form-control" name="apepat" placeholder="Ingresar 1er Apellido">
                            </div>
                            <div class="form-group">
                                <label for="apemat">2do Apellido</label>
                                <input type="text" class="form-control" name="apemat" placeholder="Ingresar 2do Apellido">
                            </div>
                            <div class="form-group">
                                <label for="nacionalidad_id">Nacionalidad_id</label>
                                <input type="text" class="form-control" name="Nacionalidad_id"  placeholder="Ingresar Nacionalidad_id">
                            </div>
                            <button type="submit" class="btn btn-default" name="guardar">Guardar</button>

                        </form>
                    </div>
                </div>
            </div>
        </div><!-- /.container -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>
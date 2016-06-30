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
        <title>Creadores</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
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
                        <li class="active"><a href="../Creadores">Creadores</a></li>
                        <li><a href="../Lenguajes_Programacion">Lenguajes_Programación</a></li>
                        <li><a href="../Nacionalidades">Nacionalidades</a></li>
                        <li><a href="../Usuarios">Usuarios</a></li>
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
                        <h3 class="panel-title">Crear Creador</h3>
                    </div>
                    <div class="panel-body">
                        <form method="POST" action="../ServletCreador">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" name="nombre" placeholder="Ingresar Nombre">
                            </div>
                            <div class="form-group">
                                <label for="apepat">1re Apellido</label>
                                <input type="text" class="form-control" name="apepat"  placeholder="Ingresar 1re Apellido">
                            </div>

                            <div class="form-group">
                                <label for="apemat">2do Apellido</label>
                                <input type="text" class="form-control" name="apemat" placeholder="Ingresar 2do Apellido">
                            </div>
                            
                            <div class="form-group">
                                <label for="nacionalidad_id">Seleccionar Pais_ID</label>
                                <select name="nacionalidades" id="nacionalidad_id_">
                                    <%
                                       Coneccion con=new Coneccion();
                                       con.setConsulta("select * from nacionalidades");
                                       while(con.getResultado().next()){
                                         out.println("<option value='"+con.getResultado().getString("nacionalidad_id")+"'>"+con.getResultado().getString("nombre")+"</option>");
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
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
        
    </body>
</html>



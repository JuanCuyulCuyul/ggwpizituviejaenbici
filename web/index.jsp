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
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="template/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/css/form-elements.css">
        <link rel="stylesheet" href="template/css/style.css">
        <title>Login</title>
        <link href="template/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>

      <nav class="navbar navbar-inverse navbar-fixed-top">

            <div class="top-content">

                <div class="inner-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2 text">
                                <h1><strong>Prueba 3</strong> Progra 2</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-sm-offset-3 form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Accede a nuestro sitio</h3>
                                        <p>Introduzca su nombre de usuario y clave para iniciar sesión:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-key"></i>
                                    </div>
                                </div>
                               <div class="panel-body">
                        <form method="POST" action="ServletLogin" class="form-horizontal">
                            <div class="form-group">
                                <label for="usuario" class="col-sm-2 control-label">Usuario</label>
                                <div class="col-sm-10">
                                <input type="text" name="usuario" id="usuario" placeholder="Nombre de usuario..." class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="clave" class="col-sm-2 control-label">Contraseña</label>
                                <div class="col-sm-10">
                                    <input type="password" name="clave" id="clave" placeholder="Contraseña..." class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" name="login" class="btn btn-default" value="login">Ingresar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            </div>
        </nav>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="template/js/bootstrap.min.js"></script>

    </body>
</html>
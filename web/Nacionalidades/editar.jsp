<%@page import="accesodato.Coneccion"%>
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
            <title>Nacionalidades</title>
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
                        <li><a href="../Lenguajes_Programacion">Lenguajes_Programaci�n</a></li>
                        <li class="active"><a href="../Nacionalidades">Nacionalidades</a></li>
                        <li><a href="../Usuarios">Usuarios</a></li>
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
                            <h3 class="panel-title">Editar Nacionalidades</h3>
                        </div>
                        <%
                           int nacionalidad_id=Integer.parseInt(request.getParameter("editar"));
                           Coneccion con=new Coneccion();
                           con.setConsulta("select * from Nacionalidades where nacionalidad_id='"+nacionalidad_id+"'");
                       %>
                        <div class="panel-body">
                            <% while(con.getResultado().next()){  %>
                           
                            <form method="POST" action="../ServletNacionalidad?editar=si">
                               
                                <div class="form-group">
                                <label for="nacionalidad_id">Nacionalidad_ID</label>
                                <input type="text" class="form-control" readonly="true" value='<% out.println("" + con.getResultado().getString("nacionalidad_id")); %>' name="nacionalidad_id">
                            </div>
                                <div class="form-group">
                                    <label for="nombre">Nombre </label>
                                    <input type="text" class="form-control" name="nombre" value='<% out.println(""+con.getResultado().getString("nombre")); %>' id="nombre" placeholder="Ingresar Nombre">
                                </div>
                               
                                <button type="submit" class="btn btn-danger">Editar</button>
                            </form>
                           <% } %>
     
                        </div>
                    </div>
                </div>
            </div><!-- /.container -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="../template/js/bootstrap.min.js"></script>
     
        </body>
    </html>


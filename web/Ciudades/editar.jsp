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
            <title>Ciudades</title>
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
                        <li><a href="../Usuarios">Usuarios</a></li>
                        <li class="active"><a href="../Ciudades">Ciudades</a></li>
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
                            <h3 class="panel-title">Editar Ciudad</h3>
                        </div>
                        <%
                           int ciudad_id=Integer.parseInt(request.getParameter("editar"));
                           Coneccion con=new Coneccion();
                           con.setConsulta("select * from Ciudades where ciudad_id='"+ciudad_id+"'");
                       %>
                        <div class="panel-body">
                            <% while(con.getResultado().next()){  %>
                           
                            <form method="POST" action="../ServletCiudad?editar=si">
                               
                                <div class="form-group">
                                <label for="ciudad_id">Ciudad_ID</label>
                                <input type="text" class="form-control" readonly="true" value='<% out.println("" + con.getResultado().getString("ciudad_id")); %>' name="ciudad_id">
                            </div>
                                <div class="form-group">
                                    <label for="nombre">Nombre</label>
                                    <input type="text" class="form-control" name="nombre" value='<% out.println(""+con.getResultado().getString("nombre")); %>' id="nombre" placeholder="Ingresar Nombre">
                                </div>
                                 <div class="form-group">
                                    <label for="creado_por">Creado_por</label>
                                    <input type="text" class="form-control" name="creado_por" value='<% out.println(""+con.getResultado().getString("creado_por")); %>' id="creado_por" placeholder="Ingresar Creado_por">
                                </div>
                                 <div class="form-group">
                                    <label for="pais_id">Ingresar Pais_id</label>
                                    <input type="text" class="form-control" name="pais_id" value='<% out.println(""+con.getResultado().getString("pais_id")); %>' id="pais_id" placeholder="Ingresar Apellido Pais_id">
                               </div>
                               
                                <button type="submit" class="btn btn-danger">Editar</button>
                            </form>
                           <% } %>
     
                        
                    </div>
                </div>
            </div><!-- /.container -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="../template/js/bootstrap.min.js"></script>
     
        </body>
    </html>


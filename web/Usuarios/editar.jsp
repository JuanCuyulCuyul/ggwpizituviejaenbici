<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR USUARIO</h1>
        <br>
        <% String usuario_id=request.getParameter("usuario_id"); %>
        
        <form method="post" action="../ServletUsuario">
        <table border="1">
            <tr>
                <td>USUARIO ID</td><td><input type="text" name="usuario_id" readonly value="<% out.println(""+usuario_id);  %>"></td>
            </tr>
            <%  Coneccion con=new Coneccion();
                con.setConsulta("select * from Usuarios where usuario_id='"+usuario_id+"'");
                while(con.getResultado().next()){
            
            
            %>
            
            <tr>
                <td>Usuario</td><td><input type="text" name="usuario" value="<% out.println(""+con.getResultado().getString("usuario"));  %>"></td>
            </tr>
             <tr>
                <td>Clave</td><td><input type="text" name="clave" value="<% out.println(""+con.getResultado().getString("clave"));  %>"></td>
            </tr>
             <tr>
                <td>Fecha_nacimiento</td><td><input type="text" name="fecha_nacimiento" value="<% out.println(""+con.getResultado().getString("fecha_nacimiento"));  %>"></td>
            </tr>
            <tr>
                <td><input type="submit" name="editar" value="Actualizar"></td>
            </tr>
            <% } %>
        </table>
        </form>
    </body>
</html>

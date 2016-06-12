<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Lenguajes</h1>
        <br>
        <% String lenguaje_id=request.getParameter("lenguaje_id"); %>
        
        <form method="post" action="../ServletLenguajes_Programacion">
        <table border="1">
            <tr>
                <td>Lenguaje_id</td><td><input type="text" name="lenguaje_id" readonly value="<% out.println(""+lenguaje_id);  %>"></td>
            </tr>
            <%  Coneccion con=new Coneccion();
                con.setConsulta("select * from Lenguajes_programacion where lenguajes_id='"+lenguaje_id+"'");
                while(con.getResultado().next()){
            
            
            %>
            
            <tr>
                <td>Nombre</td><td><input type="text" name="nombre" value="<% out.println(""+con.getResultado().getString("nombre"));  %>"></td>
            </tr>
            <tr>
                <td>Fecha_creacion</td><td><input type="text" name="fecha_creacion" value="<% out.println(""+con.getResultado().getString("fecha_creacion"));  %>"></td>
            </tr>
             <tr>
                <td>Creador_id</td><td><input type="text" name="creador_id" value="<% out.println(""+con.getResultado().getString("creador_id"));  %>"></td>
            </tr>
             <tr>
                <td>Usuario_id</td><td><input type="text" name="usuario_id" value="<% out.println(""+con.getResultado().getString("usuario_id"));  %>"></td>
            </tr>
            <tr>
                <td><input type="submit" name="editar" value="Editar"></td>
            </tr>
            <% } %>
        </table>
        </form>
    </body>
</html>

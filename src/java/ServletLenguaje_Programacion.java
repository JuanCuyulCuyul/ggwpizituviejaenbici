import accesodato.Coneccion;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Creador;
import negocio.Lenguaje_Programacion;

public class ServletLenguaje_Programacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Lenguaje_Programacion le = new Lenguaje_Programacion();
        Coneccion con = new Coneccion();
        try (PrintWriter out = response.getWriter()) {

            if (request.getParameter("eliminar") != null) {

                int id = Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:" + id);
                le.setLenguaje_id(id);

                le.eliminar();

                response.sendRedirect("Lenguajes_Programacion");

            } else if (request.getParameter("guardar") != null) {

                String nombre = request.getParameter("nombre");
                String fecha_creacion = request.getParameter("fecha_creacion");
                int creador_id = Integer.parseInt(request.getParameter("creador_id"));
                int usuario_id = Integer.parseInt(request.getParameter("usuario_id"));

                le.setNombre(nombre);
                le.setFecha_creacion(fecha_creacion);
                le.setCreador_id(creador_id);
                le.setUsuario_id(usuario_id);

                le.guardar();

                response.sendRedirect("Lenguajes_Programacion");

            } else if (request.getParameter("editar") != null) {

                int lenguaje_id = Integer.parseInt(request.getParameter("lenguaje_id"));
                String nombre = request.getParameter("nombre");
                String fecha_creacion = request.getParameter("fecha_creacion");
                int creador_id = Integer.parseInt(request.getParameter("creador_id"));
                int usuario_id = Integer.parseInt(request.getParameter("usuario_id"));

                le.setLenguaje_id(lenguaje_id);
                le.setNombre(nombre);
                le.setFecha_creacion(fecha_creacion);
                le.setCreador_id(creador_id);
                le.setUsuario_id(usuario_id);

                le.actualizar();

                response.sendRedirect("Lenguajes_Programacion");
            }
            else if (request.getParameter("creador_id") != null) {
                String creador_id = request.getParameter("creador_id");
                con.setConsulta("select * from Usuarios where usuario_id='" + creador_id + "'");
                ArrayList lista = new ArrayList();
                try {
                    while (con.getResultado().next()) {
                        Creador cr = new Creador();
                        cr.setCreador_id(con.getResultado().getInt("creador_id"));
                        cr.setNombre(con.getResultado().getString("nombre"));
                        lista.add(cr);
                    }
                } catch (SQLException ex) {
                }
                String json = new Gson().toJson(lista);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);

            } 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

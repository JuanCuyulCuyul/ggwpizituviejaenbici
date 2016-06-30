
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
import negocio.Usuario;

public class ServletMostrarLenguaje extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Creador cre=new Creador();
        Usuario usu=new Usuario();
        try (PrintWriter out = response.getWriter()) {
            Coneccion con = new Coneccion();
            if (request.getParameter("creador_id") != null) {
                String creador_id = request.getParameter("creador_id");
                con.setConsulta("select * from usuarios where creador_id='" + creador_id + "'");
                ArrayList lista = new ArrayList();
                try {
                    while (con.getResultado().next()) {
                        cre.setCreador_id(con.getResultado().getInt("creador_id"));
                        cre.setNombre(con.getResultado().getString("nombre"));
                        cre.setEstado(con.getResultado().getString("estado"));
                        lista.add(cre);
                    }
                } catch (SQLException ex) {
                }
                String json = new Gson().toJson(lista);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);   
            } else {
                con.setConsulta("select * from usuarios");
                ArrayList lista = new ArrayList();
                try {
                    while (con.getResultado().next()) {
                        usu.setUsuario_id(con.getResultado().getInt("usuario_id"));
                        usu.setUsuario(con.getResultado().getString("usuario"));
                        usu.setEstado(con.getResultado().getString("estado"));
                        lista.add(usu);
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

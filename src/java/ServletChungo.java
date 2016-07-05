/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import accesodato.Coneccion;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Creador;
import negocio.Usuario;

/**
 *
 * @author magda
 */
public class ServletChungo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           Coneccion con = new Coneccion();
           
            if (request.getParameter("Creadores") != null) {
                con.setConsulta("select * from creadores where estado = 'Activo'");
                ArrayList lista = new ArrayList();
                try {
                    while (con.getResultado().next()) {
                        Creador cr = new Creador();
                        cr.setCreador_id(con.getResultado().getInt("Creador_id"));
                        cr.setNombre(con.getResultado().getString("nombre"));
                        cr.setEstado(con.getResultado().getString("estado"));
                        lista.add(cr);
                    }
                } catch (Exception ex) {

                }
                String json = new Gson().toJson(lista);
                //setear aplicacion json
                response.setContentType("application/json");
                //encodear a utf8
                response.setCharacterEncoding("UTF-8");
                //mostrar o imprimir el json
                response.getWriter().write(json);
                
            } else if (request.getParameter("creador_id") != null) {
                String creador_id = request.getParameter("creador_id");
                con.setConsulta("select * from lenguajes_programacion where creador_id = '" + creador_id + "' and estado='Activo'");
                ArrayList lista = new ArrayList();
                try {
                    while (con.getResultado().next()) {
                        Usuario usu= new Usuario();
                        usu.setUsuario_id(con.getResultado().getInt("usuario_id"));
                        usu.setUsuario(con.getResultado().getString("usuario"));
                        usu.setCiudad_id(con.getResultado().getInt("usuario_id"));
                        usu.setEstado(con.getResultado().getString("estado"));
                        lista.add(usu);
                    }
                } catch (Exception ex) {

                }
                String json = new Gson().toJson(lista);
                //setear aplicacion json
                response.setContentType("application/json");
                //encodear a utf8
                response.setCharacterEncoding("UTF-8");
                //mostrar o imprimir el json
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

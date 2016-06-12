import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Lenguaje_Programacion;

public class ServletLenguaje_Programacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Lenguaje_Programacion len=new Lenguaje_Programacion();
        
        try (PrintWriter out = response.getWriter()) {
           
            if(request.getParameter("eliminar")!=null){
               
                int id=Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:"+id);              
                len.setLenguaje_id(id);
                
                len.eliminar();
                
                response.sendRedirect("Lenguajes_Programacion/index.jsp");
               
            }else if(request.getParameter("guardar")!=null){
               
                String nombre=request.getParameter("nombre");
                String fecha_creacion=request.getParameter("fecha_creacion");
                int creador_id=Integer.parseInt(request.getParameter("creador_id"));
                int usuario_id=Integer.parseInt(request.getParameter("usuario_id"));
               
                len.setNombre(nombre);
                len.setFecha_creacion(fecha_creacion);
                len.setCreador_id(creador_id);
                len.setUsuario_id(usuario_id);
               
                len.guardar();
               
               response.sendRedirect("Lenguajes_Programacion/index.jsp");
               
           }else if(request.getParameter("editar")!=null){
               
               int lenguaje_id=Integer.parseInt(request.getParameter("lenguaje_id"));
               String nombre=request.getParameter("nombre");
               String fecha_creacion=request.getParameter("fecha_creacion");
               int creador_id=Integer.parseInt(request.getParameter("creador_id"));
               int usuario_id=Integer.parseInt(request.getParameter("usuario_id"));
               
               len.setLenguaje_id(lenguaje_id);
               len.setNombre(nombre);
               len.setFecha_creacion(fecha_creacion);
               len.setCreador_id(creador_id);
               len.setUsuario_id(usuario_id);
               
               len.actualizar();
               
               response.sendRedirect("Lenguajes_Programacion/index.jsp");
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

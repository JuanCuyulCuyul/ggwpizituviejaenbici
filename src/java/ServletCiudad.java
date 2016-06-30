import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Ciudad;


public class ServletCiudad extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         Ciudad ciu=new Ciudad();
        
                try (PrintWriter out = response.getWriter()) {
                    
                    if(request.getParameter("eliminar")!=null){
              
                int id=Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:"+id);
                ciu.setCiudad_id(id);
               
                ciu.eliminar();
               
                response.sendRedirect("Ciudades");
               
            }else if(request.getParameter("guardar")!=null){
               
                String nombre=request.getParameter("nombre");
                String creado_por=request.getParameter("creado_por");
               int pais_id=Integer.parseInt(request.getParameter("pais_id"));
                
                ciu.setNombre(nombre);
                ciu.setCreado_por(creado_por);
                ciu.setPais_id(pais_id);
                            
                ciu.guardar();
               
               response.sendRedirect("Ciudades");
               
            }else if(request.getParameter("editar")!=null){
               
                int ciudad_id=Integer.parseInt(request.getParameter("ciudad_id"));
                String nombre=request.getParameter("nombre");
                String creado_por=request.getParameter("creado_por");
                 int pais_id=Integer.parseInt(request.getParameter("pais_id"));
               
                ciu.setCiudad_id(ciudad_id);
                ciu.setNombre(nombre);
                ciu.setCreado_por(creado_por);
                ciu.setPais_id(pais_id);
                
                ciu.actualizar();
                
                response.sendRedirect("Ciudades");
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

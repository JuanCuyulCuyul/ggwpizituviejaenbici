import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Nacionalidad;

public class ServletNacionalidad extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Nacionalidad nac=new Nacionalidad();
        
                try (PrintWriter out = response.getWriter()) {
                    
                    if(request.getParameter("eliminar")!=null){
              
                int id=Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:"+id);
                nac.setNacionalidad_id(id);
               
                nac.eliminar();
               
                response.sendRedirect("Nacionalidades");
               
            }else if(request.getParameter("guardar")!=null){
               
                String nombre=request.getParameter("nombre");
                                
               nac.setNombre(nombre);
                                                           
                nac.guardar();
               
               response.sendRedirect("Nacionalidades");
               
            }else if(request.getParameter("editar")!=null){
               
                int nacionalidad_id=Integer.parseInt(request.getParameter("nacionalidad_id"));
                String nombre=request.getParameter("nombre");
               
                nac.setNacionalidad_id(nacionalidad_id);
                nac.setNombre(nombre);
                               
                nac.actualizar();
                
                response.sendRedirect("Nacionalidades");
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

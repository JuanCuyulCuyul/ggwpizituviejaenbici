import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Pais;

public class ServletPais extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Pais pai=new Pais();
        
                try (PrintWriter out = response.getWriter()) {
                    
                    if(request.getParameter("eliminar")!=null){
              
                int id=Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:"+id);
                pai.setPais_id(id);
               
                pai.eliminar();
               
                response.sendRedirect("Paises");
               
            }else if(request.getParameter("guardar")!=null){
               
                String nombre=request.getParameter("nombre");
                String creado_por=request.getParameter("creado_por");
                
               pai.setNombre(nombre);
                pai.setCreado_por(creado_por);
                                            
                pai.guardar();
               
               response.sendRedirect("Paises");
               
            }else if(request.getParameter("editar")!=null){
               
                int pais_id=Integer.parseInt(request.getParameter("pais_id"));
                String nombre=request.getParameter("nombre");
                String creado_por=request.getParameter("creado_por");
               
                pai.setPais_id(pais_id);
                pai.setNombre(nombre);
                pai.setCreado_por(creado_por);
                               
                pai.actualizar();
                
                response.sendRedirect("Paises");
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

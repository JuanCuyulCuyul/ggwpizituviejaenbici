
package negocio;

import accesodato.Coneccion;

/**
 *
 * @author Cristopher_2
 */
public class Pais {
    
    private int pais_id;
    private String nombre;
    private String creado_por;
    private String estado;
    Coneccion con;

    public Pais() {
        con=new Coneccion();
    }

    public int getPais_id() {
        return pais_id;
    }

    public void setPais_id(int pais_id) {
        this.pais_id = pais_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(String creado_por) {
        this.creado_por = creado_por;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public void guardar(){
        con.setInsertar("insert into Paises(nombre,creado_por,pais_id,estado) values('"+this.getNombre()+"','"+this.getCreado_por()+"','"+this.getPais_id()+"','activo')");
    }
    public void eliminar(){
        con.setInsertar("update Paises set estado='pasivo' where pais_id='"+this.getPais_id()+"'");
    }
    public void actualizar(){
        con.setInsertar("update Paises set nombre='"+this.getNombre()+"',creado_por='"+this.getCreado_por()+"',pais_id='"+this.getPais_id()+"' where pais_id='"+this.getPais_id()+"'");
    }  
    
    
}

package negocio;

import accesodato.Coneccion;

public class Nacionalidad {
    
    private int nacionalidad_id;
    private String nombre;
    private String estado;
    Coneccion con;

    public Nacionalidad() {
        con=new Coneccion();
    }

    public int getNacionalidad_id() {
        return nacionalidad_id;
    }

    public void setNacionalidad_id(int nacionalidad_id) {
        this.nacionalidad_id = nacionalidad_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public void guardar(){
        con.setInsertar("insert into Nacionalidades(nombre,nacionalidad_id,estado) values('"+this.getNombre()+"','"+this.getNacionalidad_id()+"','activo')");
    }
    public void eliminar(){
        con.setInsertar("update Nacionalidades set estado='pasivo' where nacionalidad_id='"+this.getNacionalidad_id()+"'");
    }
    public void actualizar(){
        con.setInsertar("update Nacionalidades set nombre='"+this.getNombre()+"',nacionalidad_id='"+this.getNacionalidad_id()+"' where nacionalidad_id='"+this.getNacionalidad_id()+"'");
    }
    
    
    
}

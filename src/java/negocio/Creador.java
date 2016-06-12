package negocio;

import accesodato.Coneccion;

public class Creador {
    
    private int creador_id;
    private String nombre;
    private String apepat;
    private String apemat;
    private int nacionalidad_id;
    private String estado;
    Coneccion con;
    
    public Creador() {
        con=new Coneccion();
    }

    public int getCreador_id() {
        return creador_id;
    }

    public void setCreador_id(int creador_id) {
        this.creador_id = creador_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public int getNacionalidad_id() {
        return nacionalidad_id;
    }

    public void setNacionalidad_id(int nacionalidad_id) {
        this.nacionalidad_id = nacionalidad_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
       
    public void guardar(){
        con.setInsertar("insert into Creadores(creador_id,nombre,apepat,apemat,nacionalidad_id,estado) values('"+this.getCreador_id()+"','"+this.getNombre()+"','"+this.getApepat()+"','"+this.getApemat()+"','"+this.getNacionalidad_id()+"','activo')");
    }
    public void eliminar(){
        con.setInsertar("update Creadores set estado='pasivo' where creador_id='"+this.getCreador_id()+"'");
    }
    public void actualizar(){
        con.setInsertar("update Creadores set nombre='"+this.getNombre()+"',apepat='"+this.getApepat()+"',apemat='"+this.getApemat()+"',nacionalidad_id='"+this.getNacionalidad_id()+"' where creador_id='"+this.getCreador_id()+"'");
    }
    
    
}

package negocio;

import accesodato.Coneccion;

public class Lenguaje_Programacion {
    
    private int lenguaje_id;
    private String nombre;
    private String fecha_creacion;
    private int creador_id;
    private int usuario_id;
    private String estado;
    Coneccion con;
    
    public Lenguaje_Programacion() {
        con=new Coneccion();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getLenguaje_id() {
        return lenguaje_id;
    }

    public void setLenguaje_id(int lenguaje_id) {
        this.lenguaje_id = lenguaje_id;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public int getCreador_id() {
        return creador_id;
    }

    public void setCreador_id(int creador_id) {
        this.creador_id = creador_id;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
     public void guardar(){
        con.setInsertar("insert into Lenguajes_programacion(nombre,fecha_cracion,creador_id,usuario_id,estado) values('"+this.getNombre()+"','"+this.getFecha_creacion()+"','"+this.getCreador_id()+"','"+this.getUsuario_id()+"','activo')");
    }
    public void eliminar(){
        con.setInsertar("update Lenguajes_programacion set estado='pasivo' where lenguaje_id='"+this.getLenguaje_id()+"'");
    }
    public void actualizar(){
        con.setInsertar("update Lenguajes_programacion set fecha_creacion='"+this.getFecha_creacion()+"',nombre='"+this.getNombre()+"'creador_id='"+this.getCreador_id()+"',usuario_id='"+this.getUsuario_id()+"' where lenguaje_id='"+this.getLenguaje_id()+"'");
    }
    
    
}

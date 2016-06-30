package negocio;

import accesodato.Coneccion;

public class Usuario {
    
    private int usuario_id;
    private String usuario;
    private String clave;
    private String fecha_nacimiento;
    private String estado;
    private int ciudad_id;
    Coneccion con;
    
    public Usuario() {
        con=new Coneccion();
    }

    public int getCiudad_id() {
        return ciudad_id;
    }

    public void setCiudad_id(int ciudad_id) {
        this.ciudad_id = ciudad_id;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
     public void guardar(){
        con.setInsertar("insert into Usuarios(usuario,clave,fecha_nacimiento,estado,ciudad_id) values('"+this.getUsuario()+"','"+this.getClave()+"','"+this.getFecha_nacimiento()+"','activo','"+this.getCiudad_id()+"')");
    }
    public void eliminar(){
        con.setInsertar("update Usuarios set estado='pasivo' where usuario_id='"+this.getUsuario_id()+"'");
    }
    public void actualizar(){
        con.setInsertar("update Usuarios set usuario='"+this.getUsuario()+"',clave='"+this.getClave()+"',fecha_nacimiento='"+this.getFecha_nacimiento()+"',ciudad_id='"+this.getCiudad_id()+"' where usuario_id='"+this.getUsuario_id()+"'");
    }
}
    
    

//crear sesion servtlet y crear sesion jsp
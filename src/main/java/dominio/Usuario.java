package dominio;

public class Usuario {

    private int idUsuario;
    private String nombre;
    private String email;
    private String password;
    private String error = "error";

    

    public Usuario() {

    }

    public Usuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    public Usuario(String email) {
        this.email = email;
    }

    public Usuario(String nombre, String email, String password) {
        this.nombre = nombre;
        this.email = email;
        this.password = password;
    }
    
    public Usuario(int idUsuario, String nombre, String email, String password) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.email = email;
        this.password = password;
    }
    
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getError(){
        return error; 
    }
    
    public void setError(String error){
        this.error = error;
    }
    
        @Override
    public String toString() {
        return "Usuario{" + "idCliente=" + idUsuario + ", nombre=" + nombre + ", email=" + email + ", password="+ password +'}';
    }

}

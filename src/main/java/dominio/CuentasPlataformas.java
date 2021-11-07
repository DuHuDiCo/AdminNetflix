package dominio;

public class CuentasPlataformas {

    private int idCuenta;
    private String email;
    private String password;
    private String plataforma;
    private String fecha_creacion;
    private String fecha_vencimiento;
    private String estado;
    private String nombrePerfil_1;
    private String pinPerfil_1;
    private String nombrePerfil_2;
    private String pinPerfil_2;
    private String nombrePerfil_3;
    private String pinPerfil_3;
    private String nombrePerfil_4;
    private String pinPerfil_4;
    private String nombrePerfil_5;
    private String pinPerfil_5;
    private int id_usuarios;
    private int id_clientes;

    public CuentasPlataformas() {
    }

    public CuentasPlataformas(String email, String password, String plataforma, String fecha_creacion, String fecha_vencimiento, String estado,  int id_usuarios) {
        this.email = email;
        this.password = password;
        this.plataforma = plataforma;
        this.fecha_creacion = fecha_creacion;
        this.fecha_vencimiento = fecha_vencimiento;
        this.estado = estado;
        this.id_usuarios = id_usuarios;
    }

    public CuentasPlataformas(String nombrePerfil_1, String pinPerfil_1, String nombrePerfil_2, String pinPerfil_2, String nombrePerfil_3, String pinPerfil_3, String nombrePerfil_4, String pinPerfil_4, String nombrePerfil_5, String pinPerfil_5) {
        
        this.nombrePerfil_1 = nombrePerfil_1;
        this.pinPerfil_1 = pinPerfil_1;
        this.nombrePerfil_2 = nombrePerfil_2;
        this.pinPerfil_2 = pinPerfil_2;
        this.nombrePerfil_3 = nombrePerfil_3;
        this.pinPerfil_3 = pinPerfil_3;
        this.nombrePerfil_4 = nombrePerfil_4;
        this.pinPerfil_4 = pinPerfil_4;
        this.nombrePerfil_5 = nombrePerfil_5;
        this.pinPerfil_5 = pinPerfil_5;
    }

    public int getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(int idCuenta) {
        this.idCuenta = idCuenta;
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

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getFecha_vencimiento() {
        return fecha_vencimiento;
    }

    public void setFecha_vencimiento(String fecha_vencimiento) {
        this.fecha_vencimiento = fecha_vencimiento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNombrePerfil_1() {
        return nombrePerfil_1;
    }

    public void setNombrePerfil_1(String nombrePerfil_1) {
        this.nombrePerfil_1 = nombrePerfil_1;
    }

    public String getPinPerfil_1() {
        return pinPerfil_1;
    }

    public void setPinPerfil_1(String pinPerfil_1) {
        this.pinPerfil_1 = pinPerfil_1;
    }

    public String getNombrePerfil_2() {
        return nombrePerfil_2;
    }

    public void setNombrePerfil_2(String nombrePerfil_2) {
        this.nombrePerfil_2 = nombrePerfil_2;
    }

    public String getPinPerfil_2() {
        return pinPerfil_2;
    }

    public void setPinPerfil_2(String pinPerfil_2) {
        this.pinPerfil_2 = pinPerfil_2;
    }

    public String getNombrePerfil_3() {
        return nombrePerfil_3;
    }

    public void setNombrePerfil_3(String nombrePerfil_3) {
        this.nombrePerfil_3 = nombrePerfil_3;
    }

    public String getPinPerfil_3() {
        return pinPerfil_3;
    }

    public void setPinPerfil_3(String pinPerfil_3) {
        this.pinPerfil_3 = pinPerfil_3;
    }

    public String getNombrePerfil_4() {
        return nombrePerfil_4;
    }

    public void setNombrePerfil_4(String nombrePerfil_4) {
        this.nombrePerfil_4 = nombrePerfil_4;
    }

    public String getPinPerfil_4() {
        return pinPerfil_4;
    }

    public void setPinPerfil_4(String pinPerfil_4) {
        this.pinPerfil_4 = pinPerfil_4;
    }

    public String getNombrePerfil_5() {
        return nombrePerfil_5;
    }

    public void setNombrePerfil_5(String nombrePerfil_5) {
        this.nombrePerfil_5 = nombrePerfil_5;
    }

    public String getPinPerfil_5() {
        return pinPerfil_5;
    }

    public void setPinPerfil_5(String pinPerfil_5) {
        this.pinPerfil_5 = pinPerfil_5;
    }

    public int getId_usuarios() {
        return id_usuarios;
    }

    public void setId_usuarios(int id_usuarios) {
        this.id_usuarios = id_usuarios;
    }

    public int getId_clientes() {
        return id_clientes;
    }

    public void setId_clientes(int id_clientes) {
        this.id_clientes = id_clientes;
    }

}

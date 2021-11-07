package Datos;

import dominio.CuentasPlataformas;
import dominio.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {

    private static final String SQL_INSERT = "INSERT INTO usuarios(nombre, email, password)"
            + " VALUES (?,?,?) ";
    private static final String SQL_SELECT_BY_EMAIL = "SELECT password FROM usuarios WHERE email = ?";
    private static final String SQL_SELECT_ID = "SELECT idUsuario FROM usuarios WHERE email = ?";
    private static final String SQL_INSERT_CUENTANETFLIX = "INSERT INTO cuentasNetflix(email, password, plataforma, fecha_creacion, fecha_vencimiento, estado, id_usuarios ) "
            + " VALUES (?,?,?,?,?,?,?)";
   
    
    public int crearCuentaPlataforma(CuentasPlataformas nuevaCuenta){
        Connection con = null;
        PreparedStatement stmt = null;
        
        int rown = 0;
        try {
            con = Conexion.getConnection();
            stmt = con.prepareStatement(SQL_INSERT_CUENTANETFLIX);
            stmt.setString(1, nuevaCuenta.getEmail());
            stmt.setString(2, nuevaCuenta.getPassword());
            stmt.setString(3, nuevaCuenta.getPlataforma());
            stmt.setString(4, nuevaCuenta.getFecha_creacion());
            stmt.setString(5, nuevaCuenta.getFecha_vencimiento());
            stmt.setString(6, nuevaCuenta.getEstado());
            stmt.setInt(7, nuevaCuenta.getId_usuarios());
            

            rown = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(con);
            Conexion.close(stmt);

        }
        return rown;
    }

    public int insertarUsuario(Usuario usuario) {
        Connection con = null;
        PreparedStatement stmt = null;

        int rown = 0;
        try {
            con = Conexion.getConnection();
            stmt = con.prepareStatement(SQL_INSERT);
            stmt.setString(1, usuario.getNombre());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getPassword());

            rown = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(con);
            Conexion.close(stmt);

        }
        return rown;
    }

    public Usuario iniciarSesion(Usuario usuario) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = Conexion.getConnection();
            stmt = con.prepareStatement(SQL_SELECT_BY_EMAIL);
            stmt.setString(1, usuario.getEmail());

            rs = stmt.executeQuery();

            boolean valid = rs.next();
            if (valid) {

                String passDB = rs.getString("password");
                if (passDB != null) {

                    usuario.setPassword(passDB);
                } else {
                    usuario.setError("Correo o Contraseña Incorrecta");
                }
            } else {
                usuario.setError("Correo o Contraseña Incorrecta");
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(con);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return usuario;
    }

    public int obtenerIdUsuario(String email) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int idUsuario = 0;

        try {
            con = Conexion.getConnection();
            stmt = con.prepareStatement(SQL_SELECT_ID);
            stmt.setString(1, email);

            rs = stmt.executeQuery();

            boolean valid = rs.next();
            
            if (valid) {
               idUsuario = rs.getInt("idUsuario");  
                
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(con);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
       
        return idUsuario;
    }
    
    
    
}

package web;

import Datos.Dao;
import Datos.encriptar;
import dominio.CuentasPlataformas;
import dominio.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    private static String emailUsuario;
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String accion = req.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "crearUsuario":
                    this.crearUsuario(req, resp);
                    break;
                case "verCuentas":
                    this.listarCuentas(req, resp);
                    break;
               
                default:
                    this.accionDefault(req, resp);
            }
        } else {
            this.accionDefault(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "crearCuentaUsuario":
                    this.crearCuentaUsuario(req, resp);
                    break;
                case "iniciar":
                    this.iniciarSesion(req, resp);
                    break;
                case "agregarCuenta":
                    this.agregarCuenta(req, resp);
                    break;
                 case "filtrar":
                    this.filtrar(req, resp);
                    break;    
                default:
                    this.accionDefault(req, resp);
            }
        } else {
            this.accionDefault(req, resp);
        }

    }

    private void filtrar(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String opcion = req.getParameter("filtro");
        
        switch (opcion) {
            case "disponible":
                HttpSession sesion = req.getSession();
                resp.sendRedirect("verCuentas.jsp");
                int idUsuario = new Dao().obtenerIdUsuario(emailUsuario);
                List<CuentasPlataformas> cuentas = new Dao().filtarDisponible(opcion, idUsuario);

                sesion.setAttribute("cuentas", cuentas);
                sesion.setAttribute("totalCuentas", cuentas.size());
                
                break;
            case "no disponible":
                HttpSession sesion1 = req.getSession();
                resp.sendRedirect("verCuentas.jsp");
                int id_Usuario = new Dao().obtenerIdUsuario(emailUsuario);
                List<CuentasPlataformas> cuentas1 = new Dao().filtarNoDisponible(opcion, id_Usuario);

                sesion1.setAttribute("cuentas", cuentas1);
                sesion1.setAttribute("totalCuentas", cuentas1.size());
                break;
        }
    }

    private void listarCuentas(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String opcion = req.getParameter("filtro");
        HttpSession sesion = req.getSession();
        resp.sendRedirect("verCuentas.jsp");
        String estado = "disponible";
        int idUsuario = new Dao().obtenerIdUsuario(emailUsuario);

        List<CuentasPlataformas> cuentas = new Dao().listarCuentasDisponibles(idUsuario);

        sesion.setAttribute("cuentas", cuentas);
        sesion.setAttribute("totalCuentas", cuentas.size());

    }

    private void iniciarSesion(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        HttpSession sesion = req.getSession();
        //recuperar la informacion del inicio sesion
        String email = req.getParameter("email");
        emailUsuario = email;
        String password = req.getParameter("password");
        //encriptar la contraseña recuperada
        String passwordEncriptada = encriptar.getMD5(password);

        //crear objeto usuario con el solo email
        Usuario usuario = new Usuario(email);

        //traer info de base de datos
        Usuario user = new Dao().iniciarSesion(usuario);

        //este primer if es para evitar que llegen nulls desde la base de datos
        if (!"error".equals(user.getError()) || user.getError().equals("Correo o Contraseña Incorrecta")) {

            sesion.setAttribute("error", Mensajes("Correo o Contreseña incorrecta"));
            resp.sendRedirect("index.jsp");

        } else {
            if (passwordEncriptada.equals(user.getPassword())) {

                resp.sendRedirect("adminUsuario.jsp");

            } else {

                sesion.setAttribute("error", Mensajes("Correo o Contreseña incorrecta"));
                resp.sendRedirect("index.jsp");
            }
        }

    }

    //agregar una cuenta de plataforma
    private void agregarCuenta(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //recuperar la informacion del formulario
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String plataforma = req.getParameter("plataforma");
        String estado = req.getParameter("estado");
        String fecha_creacion = req.getParameter("fecha_creacion");
        String fecha_vencimiento = req.getParameter("fecha_vencimiento");

        int id_usuarios = new Dao().obtenerIdUsuario(emailUsuario);

        //creamos el objeto para crear una cuenta nueva
        CuentasPlataformas nuevaCuenta = new CuentasPlataformas(email, password, plataforma, fecha_creacion, fecha_vencimiento, estado, id_usuarios);
        //le enviamos el objeto al DAO para guardar en BD

        int regisMod = new Dao().crearCuentaPlataforma(nuevaCuenta);
        HttpSession sesion = req.getSession();

        if (regisMod != 0) {
            resp.sendRedirect("adminUsuario.jsp");
        } else {
            sesion.setAttribute("mensaje", Mensajes("Error al Agregar la Cuenta, intente Nuevamente"));
        }

    }

    private void crearCuentaUsuario(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //recupera la informacion del formulario
        String nombre = req.getParameter("nombre");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String passwordEncriptado = encriptar.getMD5(password);

        //crear el objeto usuario
        Usuario usuario = new Usuario(nombre, email, passwordEncriptado);

        //insertar en la base de datos
        int regisModf = new Dao().insertarUsuario(usuario);

        this.accionDefault(req, resp);
    }

    private void crearUsuario(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String jspEditar = "/WEB-INF/usuario/crearCuenta.jsp";
        req.getRequestDispatcher(jspEditar).forward(req, resp);
    }

    private void accionDefault(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession sesion = req.getSession();
        resp.sendRedirect("PaginaPrincipal.jsp");
    }

    private String Mensajes(String texto) {
        String mensaje = texto;
        return mensaje;
    }
}

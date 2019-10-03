
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Usuario;
import models.UsuarioDAO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mateo.llano
 */
public class AdminUsuario extends HttpServlet { 
    
    UsuarioDAO perDAO = new UsuarioDAO();
    Usuario per = new Usuario();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException { 
        RequestDispatcher view = request.getRequestDispatcher("registro.jsp");
        view.forward(request, response);
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String i = request.getParameter("identificacion");
        String n = request.getParameter("nombre");
        String e = request.getParameter("edad");
        String ec = request.getParameter("estadiCivil");
        String t = request.getParameter("trabaja");
        
        per.setIdentificacion(i);
        per.setNombre(n);
        per.setEdad(e);
        per.setEstadoCivil(ec);
        per.setTrabaja(t);
        perDAO.agregar(per);

        RequestDispatcher view = request.getRequestDispatcher("registro.jsp");
        request.setAttribute("mensaje", "Persona agregada satisfactoriamente");
        view.forward(request, response);
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author WilangelSalsa
 */
public class Controlador extends HttpServlet {

    String Listar = "vistas/listar.jsp";
    String Add = "vistas/add.jsp";
    String Edit = "vistas/edit.jsp";
    Persona p = new Persona();
    PersonaDAO dao = new PersonaDAO();
    int id;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Acceso = "";
        String Action = request.getParameter("accion");
        if (Action.equalsIgnoreCase("listar")) {
            Acceso = Listar;

        } else if (Action.equalsIgnoreCase("add")) {
            Acceso = Add;
        } else if (Action.equalsIgnoreCase("Agregar")) {
            String dni = request.getParameter("txtDni");
            String nombre = request.getParameter("txtNombre");
            p.setDni(dni);
            p.setNom(nombre);
            dao.Add(p);
            Acceso = Listar;
        } else if (Action.equalsIgnoreCase("editar")) {
            request.setAttribute("idPer", request.getParameter("id"));
            Acceso = Edit;
        } else if (Action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String dni = request.getParameter("txtDni");
            String nombre = request.getParameter("txtNombre");
            p.setId(id);
            p.setDni(dni);
            p.setNom(nombre);
            dao.Edit(p);
            Acceso = Listar;
        }else if(Action.equalsIgnoreCase("eliminar")){
            id= Integer.parseInt(request.getParameter("id"));
            p.setId(id);
            dao.Eliminar(id);
            Acceso=Listar;
        }

        // request despues del if
        RequestDispatcher vista = request.getRequestDispatcher(Acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

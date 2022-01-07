<%-- 
    Document   : listar
    Created on : 6/01/2022, 12:56:10 p. m.
    Author     : WilangelSalsa
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Listar Personas</h1>
            <a href="Controlador?accion=add">Agregar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>DNI</th>
                        <th>NOMBRE</th>
                        <th>ACCION</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.Listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;

                    while (iter.hasNext()) {
                        per = iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= per.getId() %></td>
                        <td><%= per.getDni() %></td>
                        <td><%= per.getNom() %></td>
                        <td>
                            
                            <a href="Controlador?accion=editar&id=<%= per.getId() %>">Edit</a>
                            <a href="Controlador?accion=eliminar&id=<%= per.getId() %>">Remove</a>
                            
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
                <a href="index.jsp">Regresar</a>

        </div>
    </body>
</html>

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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Listar Personas</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">ACCION</th>
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
                        <td class="text-center" ><%= per.getId() %></td>
                        <td class="text-center" ><%= per.getDni() %></td>
                        <td class="text-center" ><%= per.getNom() %></td>
                        <td class="text-center" >
                            
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= per.getId() %>">Edit</a>
                            <a class="btn btn-danger"href="Controlador?accion=eliminar&id=<%= per.getId() %>">Remove</a>
                            
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
                <a class="btn btn-success" href="index.jsp">Regresar</a>

        </div>
    </body>
</html>

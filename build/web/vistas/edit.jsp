<%-- 
    Document   : edit
    Created on : 6/01/2022, 12:47:56 p. m.
    Author     : WilangelSalsa
--%>

<%@page import="Modelo.Persona"%>
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
            <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt((String) request.getAttribute("idPer"));
                Persona p = (Persona) dao.List(id);
            %>
            <h1>Modificar Persona</h1><!-- comment -->
            <form action="Controlador">
                DNI:<br>
                <input type="text" name="txtDni" value="<%=p.getDni()%>"><br>
                NOMBRE:<br>
                <input type="text" name="txtNombre" value="<%=p.getNom()%>"><br>
                <input type="hidden" name="txtId" value="<%=p.getId()%>"><br>

                <br> <input type="submit" name="accion" value="Actualizar"><br>

                <!-- link Regresar -->
                <a href="Controlador?accion=Listar">Regresar</a>
            </form>

        </div>
    </body>
</html>

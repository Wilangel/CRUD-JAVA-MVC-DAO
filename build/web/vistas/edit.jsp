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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
              <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt((String) request.getAttribute("idPer"));
                Persona p = (Persona) dao.List(id);
            %>
            <h1 class="text-center">Modificar Persona</h1><!-- comment -->
            <form action="Controlador">
                DNI:<br>
                <input class="form-control" type="text" name="txtDni" value="<%=p.getDni()%>"><br>
                NOMBRE:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%=p.getNom()%>"><br>
                <input type="hidden" name="txtId" value="<%=p.getId()%>"><br>

                <br> <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>

                <!-- link Regresar -->
                <br> <a class="btn btn-primary" href="Controlador?accion=Listar">Regresar</a>
            </form>  
                
            </div>
            

        </div>
    </body>
</html>

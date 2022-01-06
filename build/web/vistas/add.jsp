<%-- 
    Document   : add
    Created on : 6/01/2022, 12:47:50 p. m.
    Author     : WilangelSalsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Persona</h1><!-- comment -->
            <form action="Controlador">
                ID:<br>
                <input type="text" name="txtDni"><br>
                NOMBRE:<br>
                <input type="text" name="txtNombre"><br>
                
                <br> <input type="submit" name="accion" value="Agregar"><br>
                       
            </form>
            <a href="Controlador?accion=Listar">Regresar</a>
        </div>
        
        
    </body>
</html>

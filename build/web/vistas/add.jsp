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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1 class="text-center">Agregar Persona</h1><!-- comment -->
                <form action="Controlador">
                    ID:<br>
                    <input class="form-control"type="text" name="txtDni"><br>
                    NOMBRE:<br>
                    <input class="form-control"type="text" name="txtNombre"><br>

                    <br> <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                    <br> <a class="btn btn-primary" href="Controlador?accion=Listar">Regresar</a>
                </form>
            </div>

        </div>


    </body>
</html>

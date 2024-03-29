<%-- 
    Document   : index
    Created on : 17-mar-2021, 8:59:03
    Author     : isra9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mamas</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="css/mdb.min.css">
        <!-- Your custom styles (optional) -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/all.css">
    </head>
    <body>
        <div class="container mx-auto mt-3">
            <div class="card">
                <h1 class="card-header mx-auto text-primary">BIENVENIDO</h1>
                <form class="card-body mx-auto" action="Controladores/controlador.jsp" method="post">
                    <input class="btn btn-secondary" type="submit" name="vistaLogin" value="LOGIN">
                    <input class="btn btn-secondary" type="submit" name="vistaRegistro" value="REGISTRO">
                    <input class="btn btn-secondary" type="submit" name="vistaOlvidada" value="CONTRASEÑA OLV">
                </form>





                <!<!-- Mensaje de error guardado en sesion -->
                <%

                    if (session.getAttribute("mensaje") != null) {
                        String mensaje = (String) session.getAttribute("mensaje");
                %>
                <hr>
                <div ><span name="mensaje" id="mensaje"><%=mensaje%></span></div>
                <hr>
                <%
                    }
                %>
                <br>
            </div>
            <!-- SCRIPT -->
        </div>
        <!-- jQuery -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Your custom scripts (optional) -->
        <script type="text/javascript"></script>
    </body>
</html>

<%-- 
    Document   : inicioAdmin
    Created on : 18-mar-2021, 12:19:37
    Author     : isra9
--%>

<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mamas-inicio</title>

        <%
            // PROTECCION DE RUTAS 

            //Control de login
            if (session.getAttribute("usuarioActual") == null) {
                session.setAttribute("mensaje", "Debes iniciar sesion para acceder a dicha pagina");
                response.sendRedirect("../Vistas/login.jsp");
            } else //Control por rol
            if (((int) session.getAttribute("rolActual")) != 3) {
                session.setAttribute("mensaje", "No tienes permisos para acceder a esa pagina");
                int rol = (int) session.getAttribute("rolActual");
                if (rol == 1) {
                    response.sendRedirect("../Vistas/inicioAlu.jsp");
                }
                if (rol == 2) {
                    response.sendRedirect("../Vistas/inicioProf.jsp");
                }
            }
        %>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="../css/mdb.min.css">
        <!-- Your custom styles (optional) -->
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/all.css">
    </head>
    <body>
        <jsp:include page="../Recursos/navbar.jsp"/>
        <%
            Usuario uActual = (Usuario) session.getAttribute("usuarioActual");
        %>
        <div class="card m-3">

            <h1 class="card-header">Hello <%=uActual.getNombre()%> ,eres Administrador!</h1>

            <form action="../Controladores/controladorAdmin.jsp" method="POST">
                <div class="card-body row justify-content-center">
                    <button class="card border-dark bg-info m-2 col-3 mx-auto" type="submit" name="crudUsuarios" value="Crud Usuarios">
                        <h3 class="card-header mx-auto  m-2 bg-primary">Usuarios</h3>

                        <h5 class="card-subtitle m-2 mx-auto">0 Profesores</h5>
                        <h5 class="card-subtitle m-2 mx-auto">0 Alumnos</h5>
                    </button>
                    <button class="card border-dark bg-info m-2 col-3 mx-auto" type="submit" name="crudCiclos" value="Crud Usuarios">
                        <h3 class="card-header m-2 bg-primary mx-auto">Ciclos</h3>
                        <h5 class="card-subtitle m-2 mx-auto">0 Profesores</h5>
                        <h5 class="card-subtitle m-2 mx-auto">0 Alumnos</h5>
                    </button>
                    <button class="card border-dark bg-info m-2 col-3 mx-auto" type="submit" name="crudMaterias" value="Crud Usuarios">
                        <h3 class="card-header m-2 bg-primary mx-auto">Materias</h3>
                        <h5 class="card-subtitle m-2 mx-auto">0 Profesores</h5>
                        <h5 class="card-subtitle m-2 mx-auto">0 Alumnos</h5>
                    </button>

                </div>
            </form>

        </div>
        <!-- SCRIPT -->

        <!-- jQuery -->
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../js/mdb.min.js"></script>
        <!-- Your custom scripts (optional) -->
        <script type="text/javascript"></script>
        <jsp:include page="../Recursos/Footer.jsp"/>
    </body>
</html>

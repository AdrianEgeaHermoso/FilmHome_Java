<%-- 
    Document   : login
    Created on : 3 may. 2022, 10:49:59
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>
        <%
          String usuario = request.getParameter("usuario");
          String contrasena = request.getParameter("contrasena");
          if (usuario.equals("pepe") && contrasena.equals("1234")) {
            session.setAttribute("usuario", usuario);
            response.sendRedirect("bienvenida.jsp");
          } else {
            session.setAttribute("error", "Usuario o contraseña incorrecto");
            response.sendRedirect("formulario-login.jsp");
          }
        %>
    </body>
</html>

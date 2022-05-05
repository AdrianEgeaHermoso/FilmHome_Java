<%-- 
    Document   : logout
    Created on : 5 may. 2022, 14:06:56
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          session.removeAttribute("usuario");
          response.sendRedirect("bienvenida.jsp");
        %>
    </body>
</html>

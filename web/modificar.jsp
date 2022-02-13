<%-- 
    Document   : modificar
    Created on : 13 feb. 2022, 13:55:31
    Author     : alumno
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true","root", "root");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String modificar = "UPDATE pelicula SET "
                           + "titulo='" + request.getParameter("titulo")
                           + "', genero='" + request.getParameter("genero")
                           + "', precio='" + request.getParameter("precio")
                           + "', formato='" + request.getParameter("formato")
                           + "', puntuacion='" + request.getParameter("puntuacion")
                           + "' WHERE id=" + request.getParameter("id");
      s.execute(modificar);
      
      conexion.close();
    %>
    <script>
    alert("Pelicula Modificada");
    document.location = "index.jsp"</script>
    </body>
</html>

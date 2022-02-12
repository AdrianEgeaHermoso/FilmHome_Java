<%-- 
    Document   : altas
    Created on : 12 feb. 2022, 22:05:09
    Author     : alumno
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altas</title>
    </head>
    <body>
         <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          request.setCharacterEncoding("UTF-8");
          
          String insercion = "INSERT INTO pelicula (id,titulo,genero,precio,formato,puntuacion) VALUES ("
                           + Integer.valueOf(request.getParameter("id"))
                           + "," + request.getParameter("titulo")
                           + "," + request.getParameter("genero")
                           + "," + Integer.valueOf(request.getParameter("precio"))
                           + "," + request.getParameter("formato")
                           + "," + Integer.valueOf(request.getParameter("puntuacion"))
                           + ")";
          s.execute(insercion);
          conexion.close();
        %>
        <script>
        alert("Pelicula Añadida");
        document.location = "index.jsp"
    </script>
    </body>
</html>

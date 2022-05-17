<%-- 
    Document   : altas2
    Created on : 13 feb. 2022, 20:31:47
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
        <title>Altas Nuevos Visionados</title>
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          request.setCharacterEncoding("UTF-8");
          
          String consultaIdPelicula = "SELECT * FROM deseo WHERE id="
                  + request.getParameter("id");

          ResultSet numeroDePeliculas = s.executeQuery(consultaIdPelicula);
          numeroDePeliculas.last();

          if (numeroDePeliculas.getRow() != 0) {
            %>
            <script>
            alert("Pelicula con Id repetido");
            document.location = "index.jsp"
        </script>
        <%
        
          } else {

            String insercion = "INSERT INTO deseo (id,titulo,genero,precio,formato,puntuacion) VALUES ("
                    + "'" + request.getParameter("id")
                    + "','" + request.getParameter("titulo")
                    + "','" + request.getParameter("genero")
                    + "','" + request.getParameter("precio")
                    + "','" + request.getParameter("formato")
                    + "','" + request.getParameter("puntuacion")
                    + "')";
            s.execute(insercion);
            
          }
            conexion.close();
        %>
        <script>
            alert("Próximo visionado añadido");
            document.location = "index.jsp"
        </script>
    </body>
</html>

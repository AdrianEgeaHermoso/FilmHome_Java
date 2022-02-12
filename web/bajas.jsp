<%-- 
    Document   : bajas
    Created on : 12 feb. 2022, 22:59:19
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true","root", "root");
      Statement s = conexion.createStatement();
      s.execute ("DELETE FROM pelicula WHERE id=" + request.getParameter("id"));
      
      s.close();
    %>	
    <script>document.location = "index.jsp"</script>
    </body>
</html>

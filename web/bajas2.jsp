<%-- 
    Document   : bajas2
    Created on : 15 feb. 2022, 13:53:52
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
        <title>Bajas Deseos</title>
    </head>
    <body>
          <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true","root", "root");
      Statement s = conexion.createStatement();
      s.execute ("DELETE FROM deseo WHERE id=" + request.getParameter("id"));
      
      s.close();
    %>	
    <script>
    alert("Deseo Borrado");
    document.location = "index.jsp"</script>
    </body>
</html>

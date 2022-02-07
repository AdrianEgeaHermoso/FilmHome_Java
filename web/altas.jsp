<%-- 
    Document   : altas
    Created on : 1 feb. 2022, 10:59:40
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altas</title>
        <link rel="stylesheet" href="newcss.css"/>
    </head>
    <body>
        <h2>Introduzca los datos de la nueva película:</h2>
        <form method="get" action="index.jsp">
            Id <input type="text" name="id"/></br>
            Título <input type="text" name="titulo"/></br>
            Genero <input type="text" name="genero"/></br>
            Sinopsis <input type="text" name="sinopsis"/></br>
            Precio <input type="number" name="precio"/></br>
            Formato <input type="text" name="formato"/></br>
            Puntuación <input type="number" name="puntuacion"/></br>
            
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>

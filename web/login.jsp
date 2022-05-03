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
    <body style="background: url(./images/fondo1.jpg);">
         <div class="card border-dark mb-3 position-absolute top-50 start-50 translate-middle" style="max-width: 50rem;">
            <div class="card-header" style="background-color: #323539; color: white">LOGIN DE USUARIOS </div>
            <div class="card-body text-dark">
                <div class="text-center">
            <form method="get" action="altas2.jsp">
                <div class="mb-3">
                    <label for="id" class="form-label">NickName</label>
                    <input type="text" class="form-control" name="id" aria-describedby="id">
                </div>
                <div class="mb-3">
                    <label for="titulo" class="form-label">Password</label>
                    <input type="text" class="form-control" name="titulo" aria-describedby="titulo">
                </div>
         
                <button type="submit" class="btn btn-primary">Aceptar</button>
            </form>
            <br><a href="index.jsp"> Volver a la página principal</a>
        </div>
            </div>
        </div>
    </body>
</html>

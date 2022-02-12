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
        <title>Formulario</title>
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
    </head>
    <body>
        <div>
        <h2>Introduzca los datos de la nueva película:</h2>
        <form method="get" action="altas.jsp">
            Id <input type="text" name="id"/></br>
            Título <input type="text" name="titulo"/></br>
            Genero <input type="text" name="genero"/></br>
            Precio <input type="text" name="precio"/></br>
            Formato <input type="text" name="formato"/></br>
            Puntuación <input type="text" name="puntuacion"/></br>
            
            <input type="submit" value="Aceptar">
            
        </form>
        <a href="index.jsp"> Volver a la página principal</a>
        </div>
    </body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>



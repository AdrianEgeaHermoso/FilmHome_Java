<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="newcss.css"/>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Iniciar sesión</title>
    </head>
    <body style="background: url(./images/fondo1.jpg); padding: 20px; color: white; text-align: center">
        <%
          if (session.getAttribute("usuario") != null) {
            response.sendRedirect("index.jsp");
          }
        %>

        <div class="grid">
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <div class="card" style="margin-bottom: 100px;background-color: #323539;">
                        <img src="./images/loco.jpg" class="card-img-top" alt="bienvenida" style="height: 550px">
                        <div class="card-body">
                            <h5 class="card-title">INICIO DE SESIÓN</h5>
                            <p class="card-text">Introduzca sus datos de usuario y contraseña para acceder</p>
                            <form action="login.jsp">
                                Usuario: <input type="text" name="usuario"><br>
                                <br>
                                Contraseña: <input type="password" name="contrasena"><br>
                                <br>
                                <input type="submit" value="Enviar">
                            </form>
                            <div style="color: red;">
                                <p>
                                    <%=session.getAttribute("error") == null
                        ? "" : session.getAttribute("error")%>
                                    <% session.removeAttribute("error");%>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                </div>
            </div>
        </div>

    </body>
</html>

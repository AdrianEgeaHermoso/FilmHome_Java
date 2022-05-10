<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Página principal</title>
    </head>
    <body style="background: url(./images/fondo1.jpg); padding: 20px; color: white; text-align: center">

        <h2 style="background-color: #323539; margin-bottom: 100px">FILMHOME</h2>

        <div class="grid">
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <div class="card" style="margin-bottom: 100px;background-color: #323539;">
                        <img src="./images/loco.jpg" class="card-img-top" alt="bienvenida" style="height: 550px">
                        <div class="card-body">
                            <h5 class="card-title">BIENVENIDO/A</h5>
                            <p class="card-text">Aquí podrás administrar tu colección de películas, próximas incorporaciones a tu colección, y ver recomendaciones y novedades del mundo del cine.</p>
                            <%
                              if (session.getAttribute("usuario") == null) {
                            %>
                            <a href="formulario-login.jsp">Entrar</a>
                            <%
                            } else {
                            %>
                            Logueado como <a href="perfil.jsp"><%= session.getAttribute("usuario")%></a>
                            (<a href="logout.jsp">Salir</a>)
                            <%
                              }
                            %>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                </div>
            </div>
        </div>
    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="newcss.css"/>
        <title>Perfil de usuario</title>
    </head>
    <body style="background: url(./images/fondo1.jpg); padding: 20px; color: white; text-align: center">
        <%
          if (session.getAttribute("usuario") == null) {
            session.setAttribute("error", "Debe iniciar sesión para acceder a la página de perfil.");
            response.sendRedirect("formulario-login.jsp");
          }


        %>
        <h1>Perfil de usuario</h1>


        <div class="grid">
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <div class="card" style="margin-bottom: 100px;background-color: #323539;">
                        <img src="./images/person-workspace.svg" class="card-img-top" alt="bienvenida" style="height: 550px">
                        <div class="card-body">
                            <h5 class="card-title">Usuario: <%= session.getAttribute("usuario")%><br></h5>
                            <p class="card-text">Contraseña: <%= session.getAttribute("contrasena")%><br></p>
                            <a href="index.jsp">Página principal</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                </div>
            </div>
        </div>

        <%
          session.setAttribute(
                  "n",
                  session.getAttribute("n") == null ? 1 : (Integer) session.getAttribute("n") + 1
          );
        %>







        <div style="color: red;">
            <p>
                <%=session.getAttribute("erroradmin") == null
                                            ? "" : session.getAttribute("erroradmin")%>
                <% session.removeAttribute("erroradmin");%>
            </p>
        </div>




    </body>
</html>
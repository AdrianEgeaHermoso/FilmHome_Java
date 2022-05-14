<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="newcss.css"/>
        <title>Perfil de usuario</title>
    </head>
    <body>
        <%
          if (session.getAttribute("usuario") == null) {
            session.setAttribute("error", "Debe iniciar sesión para acceder a la página de perfil.");
            response.sendRedirect("formulario-login.jsp");
          }


        %>
        <h1>Perfil de usuario</h1>
        <table>
            <tr>
                <td>
                    <img src="user.png"></td>
                <td>
                    Usuario: <%= session.getAttribute("usuario")%><br>

                    Contraseña: <%= session.getAttribute("contrasena")%><br>
                    
                    <%
                      if (session.getAttribute("usuario").equals("admin")) {
                    %>
                    Visitas: <%= session.getAttribute("n")%><br>
                    <%
                    } else {
                    %>
                    

                    <%
                      }
                    %>
                    
                    

                    <a href="index.jsp">Página principal</a>

                    <%
                      session.setAttribute(
                              "n",
                              session.getAttribute("n") == null ? 1 : (Integer) session.getAttribute("n") + 1
                      );
                    %>
                   

                </td>
            </tr>
        </table>
    </body>
</html>
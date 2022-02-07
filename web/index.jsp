<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mis Películas</title>
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    <body>
        <h2>MIS PELÍCULAS</h2>

        <a href="altas.jsp"> Alta de Películas</a><br>

        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery("SELECT * FROM pelicula");
        %>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Sinopsis</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Formato</th>
                    <th scope="col">Puntuación</th>
                </tr>
            </thead>
            <tbody>
                <%
                  while (listado.next()) {
                    String euro = " \u20AC";
                %>
                <tr>
                    <td><%=listado.getString("id")%></td>
                    <td><%=listado.getString("titulo")%></td>
                    <td><%=listado.getString("genero")%></td>
                    <td><%=listado.getString("sinopsis")%></td>
                    <td><%=listado.getString("precio") + " \u20AC"%></td>
                    <td><%=listado.getString("formato")%></td>
                    <td><%=listado.getString("puntuacion")%></td>
                </tr>


                <%
                    //out.println(listado.getString("id") + " " + listado.getString("nombre") + listado.getString("email") + listado.getString("pais") +"<br>");
                  }

                  conexion.close();
                %>
            </tbody>
        </table>

        <h2>RECOMENDACIONES</h2>

        <%
          for (int i = 0; i < 3; i++) {

            int peliculas = (int) (Math.random() * 6 + 1);


        %>
        <div class="padre">
            <div class="hijo">
                <img src="./images/<%=peliculas%>.jpg" width="120px" height="250px"/>
            </div>
        </div>
        <%
          }
        %>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>

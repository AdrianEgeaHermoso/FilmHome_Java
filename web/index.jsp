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



    <body style="background: url(./images/fondo1.jpg); padding: 10px">
        
        
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery("SELECT * FROM pelicula");
        %>
        <h2>MIS PELÍCULAS</h2>
        
        <form method="get" action="altas.jsp">
          <tr><td><input type="text" name="id" size="5"></td>
              <td><input type="text" name="titulo" size="30"></td>
              <td><input type="text" name="genero" size="5"></td>
              <td><input type="text" name="precio" size="5"></td>
              <td><input type="text" name="formato" size="20"></td>
              <td><input type="text" name="puntuacion" size="5"></td>
              <td><button type="submit" value="Añadir" class="btn btn-primary">Añadir</button></td><td></td></tr>           
        </form>

        <a class="btn btn-primary btn-lg" href="formulario.jsp"><img src="./images/cloud-plus-fill.svg" alt="x" width="50px" height="60px"/> Alta de Películas</a>
        <br>


        <table class="table table-bordered" >
            <thead>
                <tr class="text-center">
                    <th scope="col">Id</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Formato</th>
                    <th scope="col">Puntuación</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <%
                  while (listado.next()) {

                %>
                <tr class="text-center">
                    <td><%=listado.getString("id")%></td>
                    <td><%=listado.getString("titulo")%></td>
                    <td><%=listado.getString("genero")%></td>
                    <td><%=listado.getString("precio")%></td>
                    <td><%=listado.getString("formato")%></td>
                    <td><%=listado.getString("puntuacion")%></td>
                    <!--<td><a class="btn btn-warning btn-sm"><img src="./images/pencil-fill.svg" alt="x" /><p></p>Editar</a></td>-->
                    <td><a class="btn btn-warning btn-sm"><img src="./images/pencil-fill.svg" alt="x" /><p></p>Editar</a></td>
                    <td><form method="get" action="bajas.jsp">
                            <input type="hidden" name="id" value="<%=listado.getString("id")%>"/>
                            <button type="submit" class="btn btn-danger btn-sm"><img src="./images/trash-fill.svg" alt="x" /><p></p> Eliminar</button>
                        </form></td>

                </tr>





                <%
                  }

                  conexion.close();
                %>
            </tbody>
        </table>

        <div class="grid">
            <div class="row">
                <div class="col-sm-4">
                    <h2>RECOMENDACIONES</h2>

                    <%
                      for (int i = 0; i < 1; i++) {

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

                </div>

                <div class="col-sm-4">
                    <h2>HOMENAJEADOS DEL MÉS</h2>

                    <%
                      for (int i = 0; i < 1; i++) {

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

                </div>


                <div class="col-sm-4">
                    <h2>PRÓXIMOS ESTRENOS</h2>

                    <%
                      for (int i = 0; i < 1; i++) {

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

                </div>

            </div>
        </div>

        <h2>RECOMENDACIONES</h2>

        <%
          for (int i = 0; i < 1; i++) {

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

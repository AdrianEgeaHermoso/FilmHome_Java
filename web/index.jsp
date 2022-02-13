<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FilmHome</title>
        <link rel="stylesheet" href="newcss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>

    

    <body style="background: url(./images/fondo1.jpg); padding: 20px; color: white">


        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery("SELECT * FROM pelicula");
        %>
        
        <h2 style="background-color: #323539; margin-bottom: 20px; margin-bottom: 100px">FILMHOME</h2>

        <div class="text-center" style="margin-bottom: 100px">

            <a class="btn btn-primary btn-lg" style="background-color: #323539" href="formulario.jsp"><img src="./images/cloud-plus-fill.svg" alt="x" width="50px" height="60px"/> Alta de Películas</a>
            <br>
        </div>


        <h2 style="background-color: #323539;">MI COLECCIÓN</h2>

        <table class="table table-dark table-hover" style="margin-bottom: 100px">
            <thead>
                <tr class="text-center">
                    <th scope="col">Id</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Formato</th>
                    <th scope="col">Puntuación</th>
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

        <h2 style="background-color: #323539;">ACTUALIZA TU COLECCIÓN</h2>


        <table class="table table-dark table-hover" style="margin-bottom: 100px">
            <thead>
                <tr class="text-center">
                    <th scope="col">Id</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Formato</th>
                    <th scope="col">Puntuación</th>
                    <th scope="col">Modificar</th>
                </tr>
            </thead>
            <form method="get" action="modificar.jsp">
                <tr><td><input type="text" name="id"></td>
                    <td><input type="text" name="titulo"></td>
                    <td><input type="text" name="genero"></td>
                    <td><input type="text" name="precio"></td>
                    <td><input type="text" name="formato"></td>
                    <td><input type="text" name="puntuacion"></td>
                    <td><button type="submit" value="Añadir" class="btn btn-warning btn-sm"><img src="./images/pencil-fill.svg" alt="x" /><p></p>Modificar</button></td></tr>           
            </form>

        </table>






        <div class="grid">
            <div class="row">
                <div class="col-sm-4">
                    <h2 style="background-color: #323539;">RECOMENDACIONES</h2>

                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-sm-4">
                    <h2 style="background-color: #323539;">RECOMENDACIONES</h2>

                    <%
                      for (int i = 0; i < 1; i++) {

                        int peliculas = (int) (Math.random() * 6 + 1);


                    %>
                    <div class="padre">
                        <div class="hijo">
                            <img src="./images/<%=peliculas%>.jpg" width="120px" height="250px"/>
                        </div>
                    </div>
                        <button onclick="peliculas()">Generar imagen</button>
                    <%
                      }
                    %>

                </div>


                <div class="col-sm-4">
                    <h2 style="background-color: #323539;">PRÓXIMOS ESTRENOS</h2>
                    <div class="card-group">
                        <div class="card">
                            <img src="./images/1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>


                </body>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

                </html>

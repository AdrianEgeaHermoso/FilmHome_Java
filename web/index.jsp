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



    <body style="background: url(./images/fondo1.jpg); padding: 20px; color: white; text-align: center">


        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery("SELECT * FROM pelicula");
        %>




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

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                </div>
            </div>
        </div>





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
                    <th scope="col">Id (obligatorio)</th>
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
                <div class="col-sm-6">
                    <h2 style="background-color: #323539;">PRÓXIMOS EVENTOS</h2>

                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card" style="background-color: #323539;">
                                <a href="https://www.sundance.org/festivals/sundance-film-festival/about" target="_blank"><img src="./images/sundance.jpg" class="card-img-top" alt="Sundance Festival"></a>
                                <div class="card-body" >
                                    <h5 class="card-title">Festival de Cine Sundance</h5>
                                    <p class="card-text">Fecha 20/01 - 30/01</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <a href="https://festivaldemalaga.com/" target="_blank"><img src="./images/malaga.jpg" class="card-img-top" alt="Festival de Málaga"></a>
                                <div class="card-body" style="background-color: #323539;">
                                    <h5 class="card-title">Festival de Málaga</h5>
                                    <p class="card-text">Fecha 18/03 - 27/03</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <a href="https://freakcon.es/?gclid=EAIaIQobChMIqtaLvqKG9gIV1ITVCh01vgCgEAAYASAAEgKcrfD_BwE" target="_blank"><img src="./images/freak.jpg" class="card-img-top" alt="FreakCon"></a>
                                <div class="card-body" style="background-color: #323539;">
                                    <h5 class="card-title">FreakCon</h5>
                                    <p class="card-text">Fecha 05/03 - 06/03</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <a href="https://www.fantbilbao.eus/" target="_blank"><img src="./images/fantbilbao.jpg" class="card-img-top" alt="FantBilbao"></a>
                                <div class="card-body" style="background-color: #323539;">
                                    <h5 class="card-title">Fant Bilbao</h5>
                                    <p class="card-text">Fecha 24/04 - 30/04</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="col-sm-6">
                    <h2 style="background-color: #323539;">PRÓXIMOS ESTRENOS</h2>
                    <div class="card-group">
                        <div class="card" style="background-color: #323539">
                            <img src="./images/uncharted.jpg" class="card-img-top" alt="Uncharted">
                            <div class="card-body">
                                <h5 class="card-title">Uncharted</h5>
                                <p class="card-text">Fecha de Estreno 11/02</p>

                            </div>
                        </div>
                        <div class="card" style="background-color: #323539">
                            <img src="./images/batman.jpg" class="card-img-top" alt="The Batman">
                            <div class="card-body">
                                <h5 class="card-title">The Batman</h5>
                                <p class="card-text">Fecha de Estreno 04/03</p>

                            </div>
                        </div>
                        <div class="card" style="background-color: #323539">
                            <img src="./images/morbius.jpg" class="card-img-top" alt="Morbius">
                            <div class="card-body">
                                <h5 class="card-title">Morbius</h5>
                                <p class="card-text">Fecha de Estreno 01/04</p>

                            </div>
                        </div>
                    </div>
                </div>


                <h2 style="width: 50%; margin-left: 25%;background-color: #323539;margin-top: 100px;">RECOMENDACIONES DE LA SEMANA</h2>


                <div class="carrusel" style="width: 50%;height: 25%;margin-left: 25%">
                    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
                            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="./images/encanto.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>ANIMACION</h3>
                                    <h5>ENCANTO</h5>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="./images/rednotice.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>COMEDIA</h3>
                                    <h5>RED NOTICE</h5>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="./images/papel.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>SERIES</h3>
                                    <h5>LA CASA DE PAPEL</h5>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="./images/matrix.jpeg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>CIENCIA-FICCIÓN</h3>
                                    <h5>MATRIX RESURRECTIONS</h5>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="./images/siete.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>WESTERN</h3>
                                    <h5>LOS 7 MAGNÍFICOS</h5>

                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>


                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion2 = DriverManager.getConnection("jdbc:mysql://localhost:3308/youtube?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                  Statement t = conexion2.createStatement();

                  ResultSet listado2 = t.executeQuery("SELECT * FROM deseo");
                %>



                <div class="text-center" style="margin-bottom: 100px; margin-top: 100px">

                    <a class="btn btn-primary btn-lg" style="background-color: #323539" href="formulario2.jsp"><img src="./images/cloud-plus-fill.svg" alt="x" width="50px" height="60px"/> Alta de Deseos</a>
                    <br>
                </div>


                <h2 style="width: 50%; margin-left: 25%;background-color: #323539;margin-top: 100px;">LISTA DE DESEOS</h2>

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
                          while (listado2.next()) {

                        %>
                        <tr class="text-center">
                            <td><%=listado2.getString("id")%></td>
                            <td><%=listado2.getString("titulo")%></td>
                            <td><%=listado2.getString("genero")%></td>
                            <td><%=listado2.getString("precio")%></td>
                            <td><%=listado2.getString("formato")%></td>
                            <td><%=listado2.getString("puntuacion")%></td>
                            <!--<td><a class="btn btn-warning btn-sm"><img src="./images/pencil-fill.svg" alt="x" /><p></p>Editar</a></td>-->
                            <td><form method="get" action="bajas2.jsp">
                                    <input type="hidden" name="id" value="<%=listado2.getString("id")%>"/>
                                    <button type="submit" class="btn btn-danger btn-sm"><img src="./images/trash-fill.svg" alt="x" /><p></p> Eliminar</button>
                                </form></td>

                        </tr>





                        <%
                          }

                          conexion2.close();
                        %>
                    </tbody>

                </table>

                <div class="card" style="background-color: #323539">
                    <div class="card-body">
                        <h5 class="card-title">AUTOR</h5>
                        <p class="card-text">Crud Realizado por Adrián Egea Hermoso</p>
                        
                    </div>
                </div>

                </body>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

                </html>

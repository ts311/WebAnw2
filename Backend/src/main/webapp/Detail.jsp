<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
    <!-- Das neueste kompilierte und minimierte CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Optionales Theme -->
    <%--    TODO: Fix the version--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Das neueste kompilierte und minimierte JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
<!-- Header -->
<div class="container-fluid headerbg">
    <!-- table for the top: logo, searchbar, card -->
    <div class="row d-flex align-items-center">
        <div class="col-md-4">
            <img src="Logo/Logo3.png" id="logo">
        </div>

        <div class="col-md-4">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Suche nach...">
                <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Los!</button>
                    </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->

        <div class="col-md-4">
            <input type=button value="Einkaufswagen" onclick="window.location.href='card.jsp';" class="pull-right"/>
        </div>
    </div>
</div>
<!-- !Header -->

<!-- Navbar -->
<nav class="navbar navbar-expand-sm sticky-top primary-color topnav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Prozessoren</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Arbeitsspecher</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Festplatten</a>
        </li>
        <li class="nav-item pull-right">
            <a class="nav-link" href="Kontakt.jsp">Kontakt</a>
        </li>
    </ul>
</nav>
<!-- !Navbar -->
    
<!-- Content -->
<div class="platzhalter"></div>
<div class="container-fluid content">
    <h1 class="label"></h1>
    <div class="row margin-b-50 detlFont">
        <div class="col-md-6 col">
          <!--Carousel Wrapper-->
          <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-2" data-slide-to="1"></li>
              <li data-target="#carousel-example-2" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X.jpg" alt="First slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
              <div class="carousel-item">
                <!--Mask color-->
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X_2.jpg" alt="Second slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
              <div class="carousel-item">
                <!--Mask color-->
                <div class="view">
                  <img class="d-block w-100" src="Pictures/AMD_Ryzen_2600X_3.jpg" alt="Third slide">
                  <div class="mask rgba-black-light"></div>
                </div>
              </div>
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
          </div>
          <!--/.Carousel Wrapper-->
        </div>
        <div class="col-md-3 margin-t-150">
          <div class="col height-100" id="price">
          </div>
          <div class="col height-100">
            <img src="Pictures/4-Sterne.png" class="star-big"/><br>4,2 Sterne
          </div>
          <div class="col height-100" id="stock">
          </div>
        </div>
        <div class="col-md-3 margin-t-150">
          <div class="col height-100">
            Anzahl: <input type="number" value="1" min="1" max="5"/>
          </div>
          <div class="col height-100">
            <table>
              <td><input type="checkbox" value="oneDayDelivery" class=""/></td>
            </table>
            
          </div>
          <div class="col height-100">
            <input type="button" value="In den Einkaufswagen" onclick="window.location.href='card.jsp';"/>
          </div>
        </div>
    </div>
    <!--Produktbeschreibung-->
    <div>
      <hr class="featurette-divider">
      <h2>Produktbeschreibung</h2>
      <p id="prod"></p>
    </div>
    <!--Technische Daten-->
    <div class="width-100">
      <hr class="featurette-divider">
      <h2>Technische Daten</h2>
      <table class="table table-striped margin-b-50">
          <tr>
              <td>Prozessor</td>
              <td class="label"></td>
          </tr>
          <tr>
              <td>Anzahl Kerne/Threads</td>
              <td id="threads"></td>
          </tr>
          <tr>
              <td>Takt/Turbo</td>
              <td id="frequency"></td>
          </tr>
          <tr>
              <td>Sockel</td>
              <td id="socket"></td>
          </tr>
          <tr>
              <td>TDP</td>
              <td id="tdp"></td>
          </tr>
      </table>
    </div>
    <!--Bewertungen-->
    <div>
      <hr class="featurette-divider">
      <h2>Bewertungen</h2>
        <div>
          <img src="Pictures/4-Sterne.png" class="star-small"/>Verifizierter Kauf<br><p>Schnelle Lieferung, Neu und ungeöffnet. Kann mich nicht beschweren.<br>Der CPU selbst läuft auch super</p>
      </div>
      <div>
        <img src="Pictures/5-Sterne.png" class="star-small"/>Verifizierter Kauf<br>
        <p>Auch von mir eine klare Empfehlung. Über den Kühler kann ich nichts sagen, in einem Computerladen vor Ort habe ich für wenig Geld den Wraith Max erstanden und der kühlt sehr gut und ist sehr leise 
            | wenn überhaupt hörbar.<br>AMD ist wieder voll konkurrenzfähig und preisgünstig und die AM4-Plattform auch für künftige Modelle nutzbar.<br>Darum ohne Einschränkung 5 Sterne!</p>
      </div>
      <div>
        <h4>Bewertung abgeben:</h4>
        <textarea name="bewertung" rows="7" cols="30" placeholder="Ihre Bewertung"></textarea>
      </div>
      <div>    
        Anzahl Sterne: <input type="number" value="1" min="1" max="5"/>
      </div>
      <div>
        <button type="submit" class="btn btn-default">Senden</button>
      </div>
    </div>
      <hr class="featurette-divider">
</div>


    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4 primary-color">

        <!-- Footer Links -->
        <div class="container-fluid text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-6 mt-md-0 mt-3">

                    <!-- Content -->
                    <h5 class="text-uppercase">Hardware Electronics</h5>
                    <p>Besuchen Sie auch unsere social Media Seiten.</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none pb-3">

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Social Media</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="http://www.facebook.de">Facebook</a>
                        </li>
                        <li>
                            <a href="http://www.Twitter.de">Twitter</a>
                        </li>
                        <li>
                            <a href="http://www.instagram.de">Instagram</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Über uns</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="http://www.google.de">Impressum</a>
                        </li>
                        <li>
                            <a href="http://www.google.de">Datenschutzerklärung</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3 sec-color">© 2018 Copyright:
            <a href="http://google.de"> HardwareElectronics.com</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->
    
</body>

<script>
    $(document).ready(function() {
        var urlParams = new URLSearchParams(window.location.search);
        var value = urlParams.get('article');
        console.log(value);
        $.ajax({
            url: "cpus/" + value,
            method: "GET",
            dataType: "json"
        })
            .done(function(response) {
                console.log(response);
                x=document.getElementsByClassName("label");  // Find the elements
                for(var i = 0; i < x.length; i++){
                    x[i].innerText=JSON.stringify(response.manufact + " " + response.artName);    // Change the content
                }
                $("#price").text(JSON.stringify("Preis: " + response.price + "€"));
                $("#threads").text(JSON.stringify(response.core + "/" + response.threads));
                $("#frequency").text(JSON.stringify(response.frequency + "/" + response.turbo));
                $("#socket").text(JSON.stringify(response.socket));
                $("#tdp").text(JSON.stringify(response.tdp));
                $("#stock").text(JSON.stringify(response.artCount + " Stück auf Lager"));
                $("#prod").text(JSON.stringify(response.description))
            })
            .fail(function(jqXHR, statusText, error) {
                var errorMsg = "Response Code: " + jqXHR.status + " - Fehlermeldung: " + jqXHR.responseText;
                console.log(errorMsg);
                $("#ziel").text("Es ist ein Fehler aufgetreten");
            });
    });
</script>

</html>
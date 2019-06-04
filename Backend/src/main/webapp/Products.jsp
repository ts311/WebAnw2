<!DOCTYPE html>
<html>
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
    <!-- <link rel="stylesheet" type="text/css" href="style.css" media="screen" /> -->
    <!-- Das neueste kompilierte und minimierte CSS
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Optionales Theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    
    <!-- Das neueste kompilierte und minimierte JavaScript
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
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
                <input type=button value="Einkaufswagen" onclick="window.location.href='card.html';" class="pull-right"/>
            </div>
        </div>
    </div>
    <!-- !Header -->
    
<!-- Navbar -->	
<nav class="navbar navbar-expand-sm sticky-top primary-color topnav">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.html">Home</a>
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
      <a class="nav-link" href="Kontakt.html">Kontakt</a>
    </li>
  </ul>
</nav>
<!-- !Navbar -->
    <div class="platzhalter"></div>

<!--<table class="table">
    
    <tr>    
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Athlon_200GE.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1300X.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1600X.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1800X.jpg" class="pic"></a></th>
    </tr>
    
    <tr>
        <td class="padtext"><a href="Detail.html">AMD Athlon 200GE</a><br>Preis: 200 Euro<br>Details: 4 Kerne, 3GHz</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1300X</a><br>Preis:300 Euro</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1600X</a><br>Preis:400 Euro</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1800X</a><br>Preis:500 Euro</td>
    
    </tr>
    
        <tr>    
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Athlon_200GE.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1300X.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1600X.jpg" class="pic"></a></th>
        <th class="padpic"><a href="Detail.html"><img src="Pictures/AMD_Ryzen_1800X.jpg" class="pic"></a></th>
    </tr>
    
    <tr>
        <td class="padtext"><a href="Detail.html">AMD Athlon 200GE</a><br>Preis: 200 Euro</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1300X</a><br>Preis:300 Euro</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1600X</a><br>Preis:400 Euro</td>
        <td class="padtext"><a href="Detail.html">AMD Ryzen 1800X</a><br>Preis:500 Euro</td>
    
    </tr>




</table>

-->

<div class="row">
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Athlon_200GE.jpg" class="pic">
      <div class="caption">
        <h3>AMD 200GE</h3>
        <p>Preis: 500 Euro<br>Takt: 3GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>

  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Ryzen_1300X.jpg" class="pic">
      <div class="caption">
        <h3>AMD Ryzen 1300X</h3>
        <p>Preis: 600 Euro<br>Takt: 4GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>
    
    
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Ryzen_1600X.jpg" class="pic">
      <div class="caption">
        <h3>AMD Ryzen 1600X</h3>
        <p>Preis: 700 Euro<br>Takt: 5GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>
    
</div>   
    <hr class="featurette-divider">

<div class="row">
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Athlon_200GE.jpg" class="pic">
      <div class="caption">
        <h3>AMD 200GE</h3>
        <p>Preis: 500 Euro<br>Takt: 3GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>

  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Ryzen_1300X.jpg" class="pic">
      <div class="caption">
        <h3>AMD Ryzen 1300X</h3>
        <p>Preis: 600 Euro<br>Takt: 4GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>
    
    
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail padpic">
      <img src="Pictures/AMD_Ryzen_1600X.jpg" class="pic">
      <div class="caption">
        <h3>AMD Ryzen 1600X</h3>
        <p>Preis: 700 Euro<br>Takt: 5GHz</p>
        <p><a href="Detail.html" class="btn btn-primary" role="button">Zum Kauf</a></p>
      </div>
    </div>
  </div>
</div>    


<!--Produktliste-->   
    <hr class="featurette-divider">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    
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

    <script>
        $(document).ready(function() {

            console.log("Document ready, binding button");

                    $.ajax({
                        url: "/cpus",
                        method: "GET",
                        dataType: "json"
                    })
                        .done(function(response) {
                            console.log(response);
                            $("#ziel").text("Empfangene Daten: " + JSON.stringify(response));
                        })
                        .fail(function(jqXHR, statusText, error) {
                            var errorMsg = "Response Code: " + jqXHR.status + " - Fehlermeldung: " + jqXHR.responseText;
                            console.log(errorMsg);
                            $("#ziel").text("Es ist ein Fehler aufgetreten");
                        });
        });
        
    </script>
    
</body>

</html>
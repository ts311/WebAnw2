<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact</title>
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
    <div class="platzhalter"></div>
<!-- Content -->
<div class="container-fluid">
<center><h1> Kontaktieren Sie uns </h1></center><br>
	<p> Falls Sie fragen oder anregungen haben können Sie uns über das untenstehende Formular jeder Zeit kontaktieren.</p>
	<p> Bitte achten Sie darauf, dass alle Felder korrekt ausgefüllt sind. <p><br>
	<form action="submit.jsp" method="get" onsubmit='return checkForm();'>
        <table style="width:0%" id="table">
	        <tr>
               <td>Name:</td>
               <td><input type="text" name="name"></td>
            </tr>
	       
            <tr>
                <td>Nachname:</td>
                <td><input type="text" name="nachname">
                </td>
            </tr>
	       
            <tr><td>E-Mail:</td>
                <td><input type="email" name="email"></td>
            </tr>
	       
            <tr>
                <td>Mitteilung:</td> 
                <td><textarea name="nachricht" rows="7" cols="30">Ihre Nachricht</textarea></td>
            </tr>
	       <tr>
               <td></td>
               <td><input type="submit" value="Absenden"></td>
            </tr> 
        </table>
    </form>
</div>
    
    <hr class="featurette-divider">

	<script>
	function checkForm(){
	var strFehler='';
	if (document.forms[0].name.value=="")
		strFehler += "\n Feld Name ist leer";
	if (document.forms[0].nachname.value=="")
		strFehler += "\n Feld Nachname ist leer";
	
	if (document.forms[0].email.value=="")
		strFehler += "\n Feld Email ist leer";
		
	if (document.forms[0].nachricht.value=="Ihre Nachricht")
		strFehler += "\n Feld Nachricht ist nicht korrekt ausgefüllt";
	if (strFehler.length>0) {
		alert("Warnung: \n"+strFehler);
		return(false);
}
}
</script>
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
  
</body>
</html>
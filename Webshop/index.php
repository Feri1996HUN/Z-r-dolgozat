













<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webshop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
</head>

<!-- Jumbotron fejléc -->

<body style="background-color:red;">
    <div class="container-fluid text-center" style="heigth: 500px">
        <div class="jumbotron bg-warning" >
            <h1><b>PIRAMIS ITALKERESKEDÉS</b></h1>

            <!-- MENÜ -->

            <p><nav class="navbar navbar-expand-lg navbar-light bg-warning">

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                        MENÜ
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item disabled" href="index.php">Főoldal</a>
                        <a class="dropdown-item" href="kapcsolat.php">Kapcsolat</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="webshop.php">WEBSHOP</a>
                        <a class="dropdown-item" href="regiszt.php">Bejelentkezés/Regisztráció</a>

                    </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">Kosár:</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="kosar" name="kosar">0</a>
                    </li>
                </ul>
                </div>
            </nav></p>
        </div> 
    </div>

    <!-- CAROUSEL -->

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active" data-interval="2000">
      <img src="pir1vagott1.jpg" class="d-block w-100" alt="..." width="80%" height="400px">
    </div>
    <div class="carousel-item" data-interval="2000">
      <img src="pir3.jpg" class="d-block w-100" alt="..." width="80%" height="400px">
    </div>
    <div class="carousel-item" data-interval="2000">
      <img src="pir2.png" class="d-block w-100" width="80%" height="400px" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" style="width: 5%" data-target="#carouselExampleIndicators" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Előző</span>
  </button>
  <button class="carousel-control-next" type="button" style="width: 5%" data-target="#carouselExampleIndicators" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Következő</span>
  </button>
</div>


    
</body>
</html>
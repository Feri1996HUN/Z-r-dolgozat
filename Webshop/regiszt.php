













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
<body>

<!-- Jumbotron fejléc -->

<body style="background-color:red;">
    <div class="container-fluid text-center">
        <div class="jumbotron bg-warning">
            <h1><b>PIRAMIS ITALKERESKEDÉS</b></h1>

            <!-- MENÜ -->

            <p><nav class="navbar navbar-expand-lg navbar-light bg-warning">

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php"><b>VISSZA</b></a>
                    </li>

                    <!-- Regisztráció -->

                    <li>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                            </div>
                            <div class="col-sm">
                            <form action="" method="post">
                                <div class="form-group">
                            <label for="nev"><b>Név</b></label>
                            <input type="text" class="form-control" name="nev" id="nev"  placeholder="Adja meg a nevét!" minlength="3" required>
                        </div>
                            <div class="form-group">
                            <label for="pwd"><b>Jelszó</b></label>
                            <input type="text" class="form-control" name="pwd" id="pwd" placeholder="Adja meg a jelszavát!" minlength="6" required>
                        </div>
                        <button type="submit" class="btn btn-primary" name="login">BEJELENTKEZÉS</button>
                        <button type="submit" class="btn btn-primary" name="register" href="ujfelhaszn.php">REGISZTRÁCIÓ</button>
                        <div>
                            <h3><?php echo $uzen ?><h3>
                        </div>
                    </form>
                            </div>
                            <div class="col-sm">
                            </div>
                        </div>
                        </div>

                    
                    </li>
                </ul>
                </div>
            </nav></p>
        </div> 
    </div>


    
</body>
</html>
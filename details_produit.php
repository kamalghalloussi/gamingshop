<?php
session_start();
if(isset($_SESSION["email"])){
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GAMING SHOP</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- La navbar responsive-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a href="produit.php" class="navbar-brand" href="#">GAMING SHOP</a>
                
            </div>
        </nav>
        <!-- la Page -->
        <div class="container">
            <div class="text-center mt-5">
                <h1>Acceuil du site</h1>
                 <form method="post">
                    <div class="text-center">
                        <button id="btn-deconnexion" class="btn btn-danger" name="btn-deconnexion">Déconnexion</button>
                    </div>
                    <span class="mt-3 d-flex justify-content-around">
                    <h3 class="mt-3 text-warning">Bienvenue <?= $_SESSION['email'] ?></h3>
                    </span>
                </form>
            </div>
        </div>
<?php
    
    $user = "root";
    $pass = "";
    $hote = "localhost";
    $nomBaseDonnees = "e-commerce";

    try {

        $connexionDataBase = new PDO("mysql:host=".$hote.";dbname=".$nomBaseDonnees.";charset=UTF8", $user, $pass);
        $connexionDataBase->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p class='container alert alert-success text-center'>Vous êtes connectez a PDO MySQL</p>";




    }catch (PDOException $exception){
        echo "Erreur de connexion a MySQL " .$exception->getMessage();
        die();
    }

    if($connexionDataBase == true){
        $sql = "SELECT * FROM produits WHERE id_produit = ?";
        $id_produit = $_GET['id_produit'];

        $requete = $connexionDataBase->prepare($sql);

        $requete->bindParam(1, $id_produit);
        $requete->execute();
        $details = $requete->fetch();

    }




    ?>

    
    <div class="container">
        <div class="row">
            <h4 class="text-warning text-center">DÉTAILS PRODUITS</h4>
            <img class=imageduproduit src="<?= $details['image'] ?>">
            <h2 class="text-center text-info"><?= $details['nom_du_produit'] ?></h2>
        </div>
        
        <div class="row">
            <h5 class="text-center text-info"><?= $details['description'] ?></h5>
        </div>

        <div class="row">
            <h4 class=" text-center">PRIX PRODUITS</h4>
            <h5 class="text-center text-info"><?= $details['prix_produit'] ?></h5>
        </div>

        <div class="row">
            <h4 class=" text-center">DATE DEPOT</h4>
            <h5 class="text-center text-info"><?= $details['date_dépot'] ?></h5>
        </div>

        <div class="row">
            <h4 class=" text-center">stock</h4>
            <h5 class="text-center text-info"><?= $details['stock_produit'] ?></h5>
        </div>


</div>
<?php
}else{
    header("location:index.php");
    
}
?>
        <script> src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>

<?php
    function deconnexion(){
     session_unset();
     session_destroy();
     header("Location:index.php");}
     
 if(isset($_POST['btn-deconnexion'])){
deconnexion();}       
?>    
       
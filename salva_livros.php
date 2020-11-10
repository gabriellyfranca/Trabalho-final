<?php
    include("responsavel.php");
?>
<?php
    if (isset($_POST["titulo"]) && (isset($_POST["autor"]) && (isset($_POST["genero"]) && (isset($_POST["status"])) {
        try {
            $pdo = new PDO("mysql:dbname=" .$nome.";host=" .$host, $usuario, $senha);
            $consulta = $pdo->prepare("INSERT INTO livros (titulo, autor, genero, status) VALUES (:titulo, :autor, :genero, :status)");
            $consulta->bindValue(:titulo, $_POST["titulo"]);
            $consulta->bindValue(:autor, $_POST["autor"]);
            $consulta->bindValue(:genero, $_POST["genero"]);
            $consulta->bindValue(:status, $_POST["status"]);
            $consulta->execute();
        }
        header("location: controle.php");
    }
?>
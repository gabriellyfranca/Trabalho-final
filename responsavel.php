<?php
    Class usuario{
            private $pdo;
            public $msgErro = "";
            
        public function conectar ($nome, $host, $usuario, $senha) {
            global $pdo;
            global $msgErro;
                 
            try {
                $pdo = new PDO("mysql:dbname=" .$nome.";host=" .$host, $usuario, $senha);
            } catch (PDOException $e) {
            $msgErro = $e->getMessage();
            }
        }
        public function logar($nome, $CPF) {
            global $pdo;

            $sql = $pdo->prepare("SELECT idResponsavel FROM responsavel WHERE nome = :n AND CPF = :c"); 
            $sql->bindValue(":n",$nome);
            $sql->bindValue(":c",($CPF));
            $sql->execute();

            if($sql->rowCount() > 0 ) {
                $dado = $sql->fetch();  
                session_start();
                $_SESSION['idResponsavel'] = $dado['idResponsavel'];
                return true; 
            }
            else {
                return false; 
            }
        }
    }
?>
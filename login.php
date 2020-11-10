<?php
    include("responsavel.php");
    $u = new usuario();
?>
<?php
    $titulo = "Login - Easy Library";
    include("header.php");
?>
<div class="botao botao-voltar">
    <a href="index.php">Voltar</a>
</div>
<div class="container">
    <h2 class="title title-second">Login</h2>
        <div id="imagem">
            <img src="img/livros.png" alt="foto de perfil" width="50px">
        </div>
    <form class="form" action="login.php" method="POST">
        <input type="text" name="Nome" placeholder="Nome">
        <input type="number" maxlength="11" name="CPF" placeholder="CPF">
        <input type="submit" value="entrar" class="btn btn-login">
    </form>
</div>


<?php
    if(isset($_POST['Nome'])) {
        $nome = addslashes($_POST['Nome']);
        $CPF = addslashes($_POST['CPF']);
    var_dump($nome);
    var_dump($CPF);

    if(!empty($nome) && !empty($CPF)) {
        $u->conectar("easy_library", "localhost", "root", "root"); 
        if($u->msgErro == "") {
            if($u->logar($nome,$CPF)) {
                header("location:controle.php"); 
            }
            else{ ?>
                <div class="msgerro">
                    <?php echo "Nome e/ou CPF estão incorretos!"; ?> 
                </div>
                <?php
            }
        }
        else{ ?>
            <div class="msgerro">
                <?php echo "Erro: ".$u->msgErro; ?> 
            </div>
            <?php
            }
        }else{ ?>
            <div class="msgerro">
                <?php echo "Prencha todos os campos!"; ?>
            </div>
            <?php
        }
    }    
?>

<?php
    include("footer.php");
?>

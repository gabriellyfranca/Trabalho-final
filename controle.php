<?php
   session_start();
   if(!isset($_SESSION['idResponsavel']))
   {
       header("location:login.php");
       exit;
   }
?>
<?php
    $nome = ('easy_library');
    $host = ('127.0.0.1');
    $usuario = ('root');
    $senha= ('root');

    try {
        $pdo = new PDO("mysql:dbname=" .$nome.";host=" .$host, $usuario, $senha);
    } catch (PDOException $e) {
    $msgErro = $e->getMessage();
    }
?>
<div class="botao botao-login">
    <a href="index.php">Sair</a>
    <?php
        session_destroy();
    ?>
</div>
<?php
    $titulo = "Controle - Easy Library";
    include("header.php");
?>
<h1 id="titulo">Easy Library</h1>
<div id="caixa-imagem">
    <img src="img/livros.png" alt="foto de perfil" width="50px">
</div>   
<div>
    <h2 class="status">Alterar Status</h2>
    <form class="form" action="salva_livros.php" method ="post">
        <input type="text" name="titulo" placeholder="Título do Livro">
        <input type="text" name="status" placeholder="Status">
        <input type="submit">
    </form>
</div>
<hr>
<h3>ou</h3>
<hr>
<div class="cadastro">
    <h2 class="cadastrar">Cadastrar Livros</h2>
    <form class="form" action="salva_livros.php" method ="post">
        <input type="text" name="titulo" placeholder="Título">
        <input type="text" name="autor" placeholder="Autor">
        <input type="text" name="genero" placeholder="Gênero">
        <input type="text" name="status" placeholder="Status">
        <input type="submit">
    </form>
</div>

<?php
    include("footer.php");
?>
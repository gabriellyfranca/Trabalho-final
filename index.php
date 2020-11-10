<?php
    $titulo = "Página inicial - Easy Library";
    include("header.php");
?>
<div class="botao botao-login">
    <a href="login.php">Login</a>
</div>
<h1 id="titulo">Easy Library</h1>
<div id="caixa-imagem">
    <img src="img/livros.png" alt="foto de perfil" width="50px">
</div>
<div class="pesquisa">
    <select id="barraPesquisa">
        <option value="Autobiografia">Autobiografia</option> 
        <option value="Didático">Didático</option>
        <option value="Drama">Drama</option>
        <option value="Ficção">Ficção</option>
        <option value="Romance">Romance</option>
        <option value="Suspense">Suspense</option>
        <option value="Terror">Terror</option>
    </select>
</div>
<?php
    include("footer.php");
?>


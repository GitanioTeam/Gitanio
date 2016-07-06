<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"
          media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>GitanioStock</title>
</head>
<body class="row">
<nav>
    <div class="nav-wrapper teal darken-2">
        <a href="index.html" class="brand-logo left">GitanioStock</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="/listarProdutos">Listagem</a></li>
            <li class="active"><a href="movimentacao.html">Movimentação</a></li>
            <li><a href="novo_item.html">Novo</a></li>
        </ul>
    </div>
</nav>

<div class="fixed-action-btn" style="bottom: 10px; right: 24px;">
    <a href="nova_compra.html" class="waves-effect waves-light teal darken-2 btn">Nova Compra</a>
    <a href="nova_venda.html" class="waves-effect waves-light teal darken-2 btn">Nova
        Venda</a>
</div>
<div class="container">
    <table class="highlight">
        <thead>
        <tr>
            <th data-field="name">Tipo</th>
            <th data-field="id">ID</th>
            <th data-field="number">Produto</th>
            <th data-field="number">Quantidade</th>
            <th data-field="name">Cliente/Fornecedor</th>
            <th data-field="name">Reponsável</th>
            <th data-field="number">Valor Total</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>Compra</td>
            <td>1</td>
            <td>2345</td>
            <td>10</td>
            <td>Alberto Silva</td>
            <td>Ikari Shinji</td>
            <td>R$500,00</td>
        </tr>
        <tr>
            <td>Venda</td>
            <td>2</td>
            <td>34542</td>
            <td>10</td>
            <td>Izanagi Kaworu</td>
            <td>Asuka Langrey</td>
            <td>R$900,00</td>
        </tr>
        <tr>
            <td>Compra</td>
            <td>3</td>
            <td>2345</td>
            <td>10</td>
            <td>Daniela Pontes</td>
            <td>Marla Singer</td>
            <td>R$1000,00</td>
        </tr>
        <tr>
            <td>Compra</td>
            <td>4</td>
            <td>99667</td>
            <td>10</td>
            <td>Marcos Manolo Figueiredo</td>
            <td>Marla Singer</td>
            <td>R$1000,00</td>
        </tr>
        <tr>
            <td>Venda</td>
            <td>5</td>
            <td>9554</td>
            <td>10</td>
            <td>Yuri Sudoku</td>
            <td>Ikari Shinji</td>
            <td>R$1000,00</td>
        </tr>
        <tr>
            <td>Compra</td>
            <td>6</td>
            <td>66112</td>
            <td>10</td>
            <td>Hellena Pêra</td>
            <td>Alberto Silva</td>
            <td>R$1000,00</td>
        </tr>
        <tr>
            <td>Venda</td>
            <td>7</td>
            <td>66643</td>
            <td>10</td>
            <td>Pedro Álvares Cabral</td>
            <td>Ikari Shinji</td>
            <td>R$1000,00</td>
        </tr>
        <tr>
            <td>Compra</td>
            <td>8</td>
            <td>5553</td>
            <td>10</td>
            <td>Alberto Silva</td>
            <td>Ikari Shinji</td>
            <td>R$500,00</td>
        </tr>
        <tr>
            <td>Venda</td>
            <td>9</td>
            <td>243555</td>
            <td>10</td>
            <td>Izanagi Kaworu</td>
            <td>Asuka Langrey</td>
            <td>R$900,00</td>
        </tr>
        </tbody>
    </table>
</div>

<ul class="pagination center">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
    <li class="active teal darken-2"><a href="#!">1</a></li>
    <li class="waves-effect"><a href="#!">2</a></li>
    <li class="waves-effect"><a href="#!">3</a></li>
    <li class="waves-effect"><a href="#!">4</a></li>
    <li class="waves-effect"><a href="#!">5</a></li>
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
</ul>

<script type="text/javascript"
        src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>

<script type="text/javascript"> // Enough JS to activate Materialize
$(document).ready(function () {
    // Put necessary JS here
});
</script>

</body>
</html>

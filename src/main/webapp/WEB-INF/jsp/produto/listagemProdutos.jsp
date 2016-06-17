<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="../css/materialize.min.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Gitânio - Lista de produto</title>
</head>
<body class="row">
<nav>
    <div class="nav-wrapper blue-grey">
        <a href="/" class="brand-logo left">Gitanio</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li class="active">Listagem</li>
            <li><a href="movimentacao.html">Movimentação</a></li>
            <li><a href="/criaProduto">Novo</a></li>
        </ul>
    </div>
</nav>

<br><br>

<body>
<div class="container">
    <table class="centered">
        <thead>
        <tr>
            <th data-field="Codigo">Código</th>
            <th data-field="Nome">Nome</th>
            <th data-field="Categoria">Categoria</th>
            <th data-field="Quantidade">Quantidade</th>
            <th data-field="Quantidade">Quantidade Mínima</th>
            <th data-field="Preco">Preço Unitário</th>
            <th>Opções</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>12587</td>
            <td>Budweiser 343ml</td>
            <td>Cervejas Importadas</td>
            <td>17</td>
            <td>10</td>
            <td>R$2,99</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        <tr>
            <td>12576</td>
            <td>Corona Extra 355 ml</td>
            <td>Cervejas Importadas</td>
            <td>12</td>
            <td>10</td>
            <td>R$5,49</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        <tr>
            <td>11579</td>
            <td>Antarctica Cristal 355ml</td>
            <td>Cervejas Nacionais</td>
            <td>32</td>
            <td>20</td>
            <td>R$1,99</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        <tr>
            <td>11579</td>
            <td>Charuto Alonso Menendez Corona Nº 20</td>
            <td>Tabacaria Nacional</td>
            <td>20</td>
            <td>5</td>
            <td>R$23,90</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        <tr>
            <td>11579</td>
            <td>Charuto Robt Burns Black Watch Tubo</td>
            <td>Tabacaria Americana</td>
            <td>5</td>
            <td>10</td>
            <td>R$11,80</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        <tr>
            <td>11579</td>
            <td>Carvão Vegetal QUALITÁ Pacote 5kg</td>
            <td>Utensílios para Churrasco</td>
            <td>10</td>
            <td>15</td>
            <td>R$32,90</td>
            <td>
                <a class="btn-floating btn-tiny waves-effect waves-light red" href="novo_item.html"><i
                        class="material-icons">mode_edit</i></a>
                <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                        class="material-icons">delete</i></a>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>

<div class="container">
    <div class="center">
        <ul class="pagination">
            <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
            <li class="active teal darken-2"><a href="#!">1</a></li>
            <li class="waves-effect"><a href="#!">2</a></li>
            <li class="waves-effect"><a href="#!">3</a></li>
            <li class="waves-effect"><a href="#!">4</a></li>
            <li class="waves-effect"><a href="#!">5</a></li>
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>
    </div>
</div>

<script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
<script src="../js/materialize.min.js"></script>
<script type="text/javascript"> // Enough JS to activate Materialize</script>
</body>
</html>

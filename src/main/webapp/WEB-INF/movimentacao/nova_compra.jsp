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
    <title>GitanioStock - Nova Compra</title>
</head>
<body class="row">

    <nav>
        <div class="nav-wrapper teal darken-2">
            <a href="#" class="brand-logo left">GitanioStock</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="listagem_itens.html">Listagem</a></li>
                <li><a href="movimentacao.html">Movimentação</a></li>
                <li><a href="novo_item.html">Novo</a></li>
            </ul>
        </div>
    </nav>

    <div class="row">
        <h3 class="col s6 offset-s3">Nova compra</h3>
    </div>

    <div class="row">
        <div class="input-field col s3 offset-s3">
            <input id="fornecedor" name="fornecedor" type="text"
                   placeholder="Mercado do Zé" class="validate">
            <label for="fornecedor">Nome do Fornecedor</label>
        </div>
        <div class="input-field col s3">
            <input id="documento" name="documento" type="text"
                   placeholder="015.132.131.312" class="validate">
            <label for="documento">Número do Documento</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s3 offset-s3">
            <select id="produtosCadastrados" name="produtosCadastrados">
                <option value="mc_emege">Macarrão Emege</option>
                <option value="piz_fr_ct">Pizza de Frango com Catupiry</option>
            </select>
            <label>Produtos</label>
        </div>
        <div class="input-field col s1">
            <input id="quantidade" name="quantidade" class="validate" type="number" min="1"/>
            <label for="quantidade">Quantidade</label>
        </div>
        <div class="input-field col right-align">
            <a href="#"><button class="twaves-effect waves-light btn">
                Adicionar
            </button></a>
        </div>
    </div>

    <div class="row">
        <table class="col s6 offset-s3 centered">
            <thead>
            <tr>
                <th data-field="Descrição do Produto">Descrição do Produto</th>
                <th data-field="Quantidade">Quantidade</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Macarrão Emege</td>
                <td>10</td>
            </tr>
            <tr>
                <td>Pizza de frango com catupiry</td>
                <td>25</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="row">
        <div class="input-field col s3 offset-s3">
            <input id="total" name="total" type="text"
                   placeholder="R$1.000,00" class="validate">
            <label for="total">Valor total da compra</label>
        </div>
        <div class="input-field col s3">
            <input id="data" name="data" type="text"
                   placeholder="08/08/1988" class="validate">
            <label for="data">Data da Compra</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s6 offset-s3 right-align">
            <a href="movimentacao.html"><button class="twaves-effect waves-light btn">
                Salvar
            </button></a>
        </div>
    </div>

    <script type="text/javascript"
            src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>

    <script type="text/javascript"> // Enough JS to activate Materialize
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
</body>
</html>

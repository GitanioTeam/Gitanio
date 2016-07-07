<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    <script type="text/javascript" src="/js/movimentacao.js"></script>
    <title>Gitânio - Nova Venda</title>
</head>
<body class="row">

<nav>
    <div class="nav-wrapper teal darken-2">
        <a href="/" class="brand-logo left">Gitânio</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="/listarProdutos">Listagem</a></li>
            <li><a href="movimentacao.html">Movimentação</a></li>
            <li><a href="/criarProduto">Novo</a></li>
        </ul>
    </div>
</nav>

<div class="row">
    <h3 class="col s6 offset-s3">Nova venda</h3>
</div>

<form action="/registrarVenda" method="post">
    <div class="row">
        <div class="input-field col s3 offset-s3">
            <input id="cliente" name="cliente" type="text"
                   class="validate">
            <label for="cliente">Nome do cliente</label>
        </div>
        <div class="input-field col s3">
            <input id="documento" name="documento" type="text"
                   class="validate">
            <label for="documento">Número da venda</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s3 offset-s3">
            <select id="selectProduto" name="produto">
                <c:forEach var="produto" items="${listaProdutos}">
                    <option value="${produto.id}">${produto.codigo} - ${produto.descricao}</option>
                </c:forEach>
            </select>
            <label>Produtos</label>
        </div>
        <div class="input-field col s1">
            <input id="quantidade" name="quantidade" class="validate" type="number" min="1"/>
            <label for="quantidade">Quantidade</label>
        </div>
        <div class="input-field col right-align">
            <a href="#">
                <button type="button" class="twaves-effect waves-light btn" onclick="movimentacaoAux.adicionarProdutoMovimentacao()">
                    Adicionar
                </button>
            </a>
        </div>
    </div>

    <div class="row">
        <table id="tabelaProdutos" class="col s6 offset-s3 centered">
            <thead>
            <tr>
                <th>Descrição do Produto</th>
                <th>Quantidade</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <div class="row">
        <div class="input-field col s2 offset-s3">
            <input id="total" name="totalVenda" type="text"
                   placeholder="R$1.000,00" class="validate">
            <label for="total">Valor total da venda</label>
        </div>
        <div class="input-field col s2">
            <input id="desconto" name="desconto" type="text"
                   placeholder="5%" class="validate">
            <label for="desconto">Desconto</label>
        </div>
        <div class="input-field col s2">
            <input id="vendedor" name="nomeVendedor" type="text"
                   placeholder="Zé da Silva" class="validate">
            <label for="vendedor">Vendedor</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s6 offset-s3 right-align">
            <button type="button" onclick="movimentacaoAux.salvarVenda()" class="twaves-effect waves-light btn">
                Salvar
            </button>
        </div>
    </div>
</form>
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

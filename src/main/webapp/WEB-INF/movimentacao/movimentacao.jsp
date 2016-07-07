<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <thead>
        <tr>
            <th data-field="Nome">Tipo</th>
            <th data-field="Id">ID</th>
            <th data-field="Produto">Produto</th>
            <th data-field="Quantidade">Quantidade</th>
            <th data-field="ClienteFornecedor">Cliente/Fornecedor</th>
            <th data-field="Responsavel">Reponsável</th>
            <th data-field="ValorTotal">Valor Total</th>
        </tr>
        </thead>

        <c:forEach var="produto" items="${listaProdutos}">
            <tr>
                <td>${produto.codigo}</td>
                <td>${produto.descricao}</td>
                <td>${produto.categoria.descricao}</td>
                    <%--TODO: Implementar quantidade em estoque--%>
                <td>10</td>
                <td>${produto.quantidadeMinima}</td>
                <td>${produto.valorUnitario}</td>
                <td>
                    <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                            class="material-icons">mode_edit</i></a>
                    <a class="btn-floating btn-tiny waves-effect waves-light red"><i
                            class="material-icons" onclick="produtoAux.excluirProduto(${produto.id})">delete</i></a>
                </td>
            </tr>
        </c:forEach>
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

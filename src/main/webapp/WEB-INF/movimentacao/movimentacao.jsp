<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
    <div class="nav-wrapper blue-grey">
        <a href="/" class="brand-logo left">GitanioStock</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="/listarProdutos">Listagem</a></li>
            <li class="active">Movimentação</li>
            <li><a href="/criarProduto">Novo</a></li>
        </ul>
    </div>
</nav>

<div class="fixed-action-btn" style="bottom: 10px; right: 24px;">
    <a href="/novaCompra" class="waves-effect waves-light blue-grey  btn">Nova Compra</a>
    <a href="/novaVenda" class="waves-effect waves-light blue-grey btn">Nova Venda</a>
</div>
<div class="container">
    <table class="highlight">
        <tbody>
        <thead>
        <tr>
            <th data-field="Nome">Tipo</th>
            <th data-field="Id">Número identificador</th>
            <th data-field="ClienteFornecedor">Cliente/Fornecedor</th>
            <th data-field="Responsavel">Reponsável</th>
            <th data-field="ValorTotal">Valor Total</th>
        </tr>
        </thead>

        <c:forEach var="movimentacao" items="${movimentacoes}">
            <tr>
                <td>${movimentacao.tipo}</td>
                <td>${movimentacao.numeroIdentificador}</td>
                <td>${movimentacao.nomeCliente}</td>
                <td>${movimentacao.nomeVendedor}</td>
                <td>${movimentacao.valorTotal}</td>
                <%--<td>--%>
                    <%--<a class="btn-floating btn-tiny waves-effect waves-light red"><i--%>
                            <%--class="material-icons">mode_edit</i></a>--%>
                    <%--<a class="btn-floating btn-tiny waves-effect waves-light red"><i--%>
                            <%--class="material-icons" onclick="produtoAux.excluirProduto(${produto.id})">delete</i></a>--%>
                <%--</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<ul class="pagination center">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
    <li class="active blue-grey"><a href="#!">1</a></li>
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

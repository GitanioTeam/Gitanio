<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="../js/produto.js"></script>
<script type="text/javascript"> // Enough JS to activate Materialize</script>
</body>
</html>

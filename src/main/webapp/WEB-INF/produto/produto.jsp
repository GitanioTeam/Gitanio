<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>GitanioStock</title>
</head>
<body class="row">

    <nav>
        <div class="nav-wrapper blue-grey">
            <a href="/" class="brand-logo left">GitanioStock</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="<c:url value="/listarProdutos"/>">Listagem</a></li>
                <li class="active">Novo</li>
            </ul>
        </div>
    </nav>
    <div class="row">
        <form action="/salvaProduto" class="col s5 offset-s3" method="post">
            <div class="row">
                <h4>Cadastrar novo Produto</h4>
            </div>
            <div class="row">
                <div class="input-field col s4">
                    <input id="codigo" name="codigo" class="validate" type="number" min="1" value="${codigo}"/>
                    <label for="codigo">Código</label>
                </div>
                <div class="input-field col s8">
                    <input id="descricao" name="descricao" class="validate" type="text" min="1" value="${descricao}"/>
                    <label for="descricao">Descrição</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s4">
                    <input id="precoUnitario" name="valorUnitario" class="validate" type="number" min="1" step="0.01" value="${precoUnitario}"/>
                    <label for="quantidadeMinima">Preço unitário</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s4">
                    <input id="quantidadeMinima" name="quantidadeMinima" class="validate" type="number" min="1" value="${quantidadeMinima}"/>
                    <label for="quantidadeMinima">Qnt. mínima</label>
                </div>
            </div>
            <div class="row">
                <div class="col s6 input-field">
                    <select id="categoria" name="idCategoria" type="number" min="1">
                        <c:forEach var="categoria" items="${listaCategorias}">
                            <option value="${categoria.id}">${categoria.nome}</option>
                        </c:forEach>
                    </select>
                    <label for="categoria">Categoria</label>
                </div>
            </div>
            <div class="row">
                <a href="listagem_itens.html" class="waves-effect btn col offset-s4 s3 blue-grey">Cancelar</a>
                <button type="submit" class="waves-effect btn col offset-s1 s2 blue-grey">Salvar</button>
            </div>
        </form>
    </div>
    <script type="text/javascript"
            src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>

    <script type="text/javascript"> // Enough JS to activate Materialize
    $(document).ready(function () {
        $('select').material_select();
    });
    </script>
</body>
</html>

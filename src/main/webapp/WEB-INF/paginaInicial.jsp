<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Gitânio - Página Inicial</title>
</head>
<body>
    <nav>
        <div class="nav-wrapper blue-grey">
                <a href="/login" class="brand-logo left">Gitânio</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="/logout">Sair da Conta</a></li>
                    <%--<li><a href="movimentacao.html">Movimentação</a></li>--%>
                    <%--<li><a href="/criaProduto">Novo</a></li>--%>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
    </nav>
    <div class="menu center-align" style="margin-top: 100px;">
        <div class="row">
            <div class="col m1"><p></p></div>
            <div class="col m2 container">
                <ul id="dropdownCadastro" class="dropdown-content">
                    <li><a href="/criaProduto">Produto</a></li>
                    <li><a href="#">Fornecedor</a></li>
                    <li><a href="#">Cliente</a></li>
                    <li><a href="">Funcionario</a></li>
                    <%--<li><a href="#">Estoque</a></li>--%>
                </ul>
                <a class="btn dropdown-button blue-grey" href="#" data-activates="dropdownCadastro">Cadastro<i
                        class="mdi-navigation-arrow-drop-down right"></i></a>
            </div>
            <div class="col m2 container">
                <ul id="dropdownEstoque" class="dropdown-content">
                     <%--<li><a href="#"></a></li>--%>
                     <%--<li><a href="#"></a></li>--%>
                    <%--<li><a href="#">Pedido de Compra</a></li>--%>
                    <%--<li><a href="#">Recebimento Produto</a></li>--%>
                </ul>
                <a class="btn dropdown-button blue-grey" href="#" data-activates="dropdownEstoque">Estoque<i
                        class="mdi-navigation-arrow-drop-down right"></i></a>
            </div>
            <div class="col m2 container">
                <ul id="dropdownFinanceiro" class="dropdown-content">
                    <li><a href="#">Pedido de Compra</a></li>
                    <%--<li><a href="#">Contas a Pagar</a></li>--%>
                    <%--<li><a href="#">Contas a Receber</a></li>--%>
                    <%--<li><a href="#">Emissão de Boletos(cobrança bancária)</a></li>--%>
                    <%--<li><a href="#">Receita</a></li>--%>
                    <%--<li><a href="#">Despesas</a></li>--%>
                    <%--<li><a href="#">Fluxo de Caixa</a></li>--%>
                    <%--<li><a href="#">Controle de Caixa e Banco</a></li>--%>
                </ul>
                <a class="btn dropdown-button blue-grey" href="#" data-activates="dropdownFinanceiro">Financeiro<i
                        class="mdi-navigation-arrow-drop-down right"></i></a>
            </div>
            <div class="col m2 container">
                <ul id="dropdownRelatorio" class="dropdown-content">
                    <li><a href="/listarProdutos">Estoque</a></li>
                    <li><a href="">Clientes</a></li>
                    <li><a href="">Fornecedores</a></li>
                    <li><a href="">Estoque Baixo</a></li>
                    <li><a href="">Pedidos de Compra</a></li>
                    <li><a href="">Pedido a Imprimir</a></li>
                    <%--<li><a href="#">Contas a Pagar</a></li>--%>
                    <%--<li><a href="#">Contas a Receber</a></li>--%>
                    <%--<li><a href="#">Faturamento</a></li>--%>
                </ul>
                <a class="btn dropdown-button blue-grey" href="#" data-activates="dropdownRelatorio">Relatorio<i
                        class="mdi-navigation-arrow-drop-down right"></i></a>
            </div>
            <div class="col m2 container">
                <ul id="dropdownRecursoHumano" class="dropdown-content">
                    <li><a href="#">Funcionarios</a></li>
                    <%--<li><a href="#">Fechamento do mês</a></li>--%>
                </ul>
                <a class="btn dropdown-button blue-grey" href="#" data-activates="dropdownRecursoHumano">Recursos Humanos<i
                        class="mdi-navigation-arrow-drop-down right"></i></a>
            </div>
            <div class="col m1"><p></p></div>
        </div>
    </div>

    <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <script src="/js/materialize.min.js"></script>
</body>
</html>

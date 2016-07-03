<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <--Import materialize.css-->
    <link rel="stylesheet" href="css/materialize.min.css">
    <--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Gitânio - Página Inicial</title>
</head>
<body class="row">

    <nav>
        <div class="nav-wrapper blue-grey">
            <a href="/" class="brand-logo left">Gitânio</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="/listarProdutos">Listagem</a></li>
                <li><a href="movimentacao.html">Movimentação</a></li>
                <li><a href="/criaProduto">Novo</a></li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
    </nav>
    <nav class="menu">
        <div class="row">
            <div class="col s12 m4 l2"><p></p></div>
            <div class="col s12 m4 l8">
                <ul id="dropdownCadastro" class="dropdown-content">
                    <li><a href="#">Produto</a></li>
                    <li><a href="#">Fornecedor</a></li>
                    <li><a href="#">Empresa</a></li>
                    <li><a href="#">Cliente</a></li>
                    <li><a href="#">Estoque</a></li>
                </ul>
                <ul id="dropdownEstoque" class="dropdown-content">
                    <li><a href="#">Pedido de Compra</a></li>
                    <li><a href="#">Recebimento Produto</a></li>
                </ul>
                <ul id="dropdownFinanceiro" class="dropdown-content">
                    <li><a href="#">Contas a Pagar</a></li>
                    <li><a href="#">Contas a Receber</a></li>
                    <li><a href="#">Emissão de Boletos(cobrança bancária)</a></li>
                    <li><a href="#">Receita</a></li>
                    <li><a href="#">Despesas</a></li>
                    <li><a href="#">Fluxo de Caixa</a></li>
                    <li><a href="#">Controle de Caixa e Banco</a></li>
                </ul>
                <ul id="dropdownRelatorio" class="dropdown-content">
                    <li><a href="#">Estoque</a></li>
                    <li><a href="#">Contas a Pagar</a></li>
                    <li><a href="#">Contas a Receber</a></li>
                    <li><a href="#">Faturamento</a></li>
                </ul>
                <ul id="dropdownRecursoHumano" class="dropdown-content">
                    <li><a href="#">Funcionarios</a></li>
                    <li><a href="#">Fechamento do mês</a></li>
                </ul>
                <ul id="dropdownConfiguracoes" class="dropdown-content">
                    <li><a href="#">Backup / Restore</a></li>
                    <li><a href="#">Cadastrar Usuários</a></li>
                </ul>
                <nav class="menu_dropdown menu">
                    <div class="row">
                        <div class="col s2"><p></p></div>
                        <div class="col s8">
                            <ul class="hide-on-med-and-down">
                                <li><a class="dropdown-button" href="#" data-activates="dropdownCadastro">Cadastro<i
                                        class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button" href="#" data-activates="dropdownEstoque">Estoque<i
                                        class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button" href="#" data-activates="dropdownFinanceiro">Financeiro<i
                                        class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button" href="#" data-activates="dropdownRelatorio">Relatorios<i
                                        class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button" href="#" data-activates="dropdownRecursoHumano">Recursos
                                    Humanos<i class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button" href="#" data-activates="dropdownConfiguracoes">Configurações<i
                                        class="material-icons right">arrow_drop_down</i></a></li>
                            </ul>
                        </div>
                        <div class="col s2"><p></p></div>
                    </div>
                </nav>
            </div>
            <div class="col s12 m4 l2"><p></p></div>
        </div>
    </nav>
    <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <script src="/js/materialize.min.js"></script>
</body>
</html>

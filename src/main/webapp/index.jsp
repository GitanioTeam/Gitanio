<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Gitanio - Pagina Inicial</title>

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <nav class="light-green" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="#" class="brand-logo">Gitanio</a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="index_fazerLogin.jsp">Fazer Login</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="index_fazerLogin.jsp">Fazer Login</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
        <nav class="menu">  
            <div class="row">
                <div class="col s12 m4 l2"><p></p></div>
                <div class="col s12 m4 l8">
                    <ul id="dropdownCadastro" class="dropdown-content">
                        <li><a href="#!">Produto</a></li>
                        <li><a href="#!">Fornecedor</a></li>
                        <li><a href="#!">Empresa</a></li>
                        <li><a href="#!">Cliente</a></li>
                        <li><a href="#!">Estoque</a></li>
                    </ul>
                    <ul id="dropdownEstoque" class="dropdown-content">
                        <li><a href="#!">Pedido de Compra</a></li>
                        <li><a href="#!">Recebimento Produto</a></li>
                    </ul>
                    <ul id="dropdownFinanceiro" class="dropdown-content">
                        <li><a href="#!">Contas a Pagar</a></li>
                        <li><a href="#!">Contas a Receber</a></li>
                        <li><a href="#!">Emissão de Boletos(cobrança bancária)</a></li>
                        <li><a href="#!">Receita</a></li>
                        <li><a href="#!">Despesas</a></li>
                        <li><a href="#!">Fluxo de Caixa</a></li>
                        <li><a href="#!">Controle de Caixa e Banco</a></li>
                    </ul>
                    <ul id="dropdownRelatorio" class="dropdown-content">
                        <li><a href="#!">Estoque</a></li>
                        <li><a href="#!">Contas a Pagar</a></li>
                        <li><a href="#!">Contas a Receber</a></li>
                        <li><a href="#!">Faturamento</a></li>
                    </ul>
                     <ul id="dropdownRecursoHumano" class="dropdown-content">
                        <li><a href="#!">Funcionarios</a></li>
                        <li><a href="#!">Fechamento do mês</a></li>
                    </ul>
                    <ul id="dropdownConfiguracoes" class="dropdown-content">
                        <li><a href="#!">Backup / Restore</a></li>
                        <li><a href="#!">Cadastrar Usuários</a></li>
                    </ul>
                    <nav class="menu_dropdown menu">
                        <div class="row">
                            <div class="col s2"><p></p></div>
                            <div class="col s8">
                                <ul class="hide-on-med-and-down">
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownCadastro">Cadastro<i class="material-icons right">arrow_drop_down</i></a></li>
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownEstoque">Estoque<i class="material-icons right">arrow_drop_down</i></a></li>
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownFinanceiro">Financeiro<i class="material-icons right">arrow_drop_down</i></a></li>
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownRelatorio">Relatorios<i class="material-icons right">arrow_drop_down</i></a></li>
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownRecursoHumano">Recursos Humanos<i class="material-icons right">arrow_drop_down</i></a></li>
                                    <li><a class="dropdown-button" href="#!" data-activates="dropdownConfiguracoes">Configurações<i class="material-icons right">arrow_drop_down</i></a></li>
                                </ul>
                            </div>
                            <div class="col s2"><p></p></div>
                        </div>
                    </nav>
                </div>
                <div class="col s12 m4 l2"><p></p></div>
            </div>
        </nav>

        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>

    </body>
</html>

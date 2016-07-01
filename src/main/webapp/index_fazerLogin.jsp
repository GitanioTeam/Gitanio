<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Gitanio - Fazer Login</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>

    <body>
        <nav class="light-green" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="index.jsp" class="brand-logo">Gitanio</a>
          
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col s12 m6 offset-m3">
                    <form class="login-form">
                        <div class="card telaLogin">
                            <div class="card-image">
                                <img src="imagens/login.png">
                                <span class="card-title">
                                    <h2>Login</h2>
                                </span>
                            </div>
                            <div class="card-content">
                                <div class="input-field">
                                    <input class="validate" id="email" type="email">
                                    <label for="email">Email</label>
                                </div>
                                <div class="row">
                                    <div class="col s12 m8 l9">
                                        <div class="input-field">
                                            <input id="password" type="password">
                                            <label for="password">Senha</label>
                                        </div>
                                    </div>
                                    <div class="col s12 m4 l3">
                                        <div class="input-field">
                                            <input type="checkbox" id="remember-me" />
                                            <label for="remember-me">Lembrar</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-action blue-grey lighten-3">
                                <div class="center-align">
                                    <a href="index.jsp" class="btn blue-grey darken-1"><i class="material-icons left">vpn_key</i>Login</a>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row link">
                        <div class="center-align">
                            <a href="index_recuperar.jsp" class="">Esqueci a senha</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <a class="btn-floating btn-large waves-effect waves-light light-green" href="index.jsp"><i class="material-icons">fast_rewind</i></a>
            </div>
        </div>

        <script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
        <script src="js/materialize.min.js"></script>
    </body>
</html>

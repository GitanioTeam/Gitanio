function Produto() {

}

Produto.prototype.excluirProduto = function (idProduto) {
    $.post("/excluirProduto", {
            "idProduto": idProduto
        })
        .done(function () {
            window.location.href = './listarProdutos';
        });
};

var produtoAux = new Produto();

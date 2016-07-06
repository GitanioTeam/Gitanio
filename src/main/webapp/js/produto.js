function Produto() {

}

Produto.prototype.excluirProduto = function (idProduto) {
    $.post("/excluirProduto", {
            "idProduto": idProduto
        })
        .done(function () {
            location.reload();
        });
};

Produto.prototype.editarProduto = function (idProduto) {
    $.post("/editarProduto", {
        "idProduto" : idProduto
    })
        .done(function () {
            location.reload();
        });
};

var produtoAux = new Produto();

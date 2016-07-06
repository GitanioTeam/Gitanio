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

var produtoAux = new Produto();

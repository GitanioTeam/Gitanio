function Movimentacao() {
    this.itens = [];
}

Movimentacao.prototype.adicionarProdutoMovimentacao = function () {

    var descricaoProduto = $('#selectProduto option:selected').text();
    var quantidadeProduto = $('#quantidade').val();
    var idProduto = $('#selectProduto').val();

    if (descricaoProduto == '' || quantidadeProduto == '') {
        return;
    }

    this.itens.push({"idProduto": idProduto, "quantidade": quantidadeProduto});

    $('#tabelaProdutos tbody').append('<tr><td>' + descricaoProduto + '</td><td>' + quantidadeProduto + '</td></tr>');

};

Movimentacao.prototype.salvarVenda = function () {

    var params = {
        cliente: $('#cliente').val(),
        documento: $('#documento').val(),
        itensJSON: JSON.stringify(this.itens),
        valorTotal: $('#totalVenda').val(),
        desconto: $('#desconto').val(),
        vendedor: $('#vendedor').val()
    };

    $.post('/registrarVenda', params)
        .success(function () {
            window.location.href = './movimentacao';
        });

};

Movimentacao.prototype.salvarCompra = function () {

    var params = {
        "documento": $('#documento').val(),
        "fornecedor": $('#fornecedor').val(),
        "itensJSON": JSON.stringify(this.itens),
        "dataCompra": $('#data').val(),
        "valorCompra": $('#valorTotal').val()
    };

    $.post('/registrarCompra', params)
        .success(function () {
            window.location.href = './movimentacao'
        });

};

var movimentacaoAux = new Movimentacao();

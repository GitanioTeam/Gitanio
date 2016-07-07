function Movimentacao() {
    this.produtosAdicionados = {};
}

Movimentacao.prototype.adicionarProdutoMovimentacao = function () {

    var descricaoProduto = $('#selectProduto option:selected').text();
    var quantidadeProduto = $('#quantidade').val();
    var idProduto = $('#selectProduto').val();

    if (descricaoProduto == '' || quantidadeProduto == '') {
        return;
    }

    this.produtosAdicionados[idProduto] = quantidadeProduto;

    $('#tabelaProdutos tbody').append('<tr><td>' + descricaoProduto + '</td><td>' + quantidadeProduto + '</td></tr>');

};

Movimentacao.prototype.salvarVenda = function () {

    var params = {
        nomeCliente: $('#cliente').val(),
        documento: $('#documento').val(),
        produtosAdicionados: this.produtosAdicionados,
        valorTotal: $('#totalVenda').val(),
        desconto: $('#desconto').val(),
        vendedor: $('#vendedor').val()
    };

    $.post('/registrarVenda', params)
        .success(function () {
            console.log('teste');
        });

};


var movimentacaoAux = new Movimentacao();

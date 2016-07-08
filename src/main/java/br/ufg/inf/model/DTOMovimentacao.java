package br.ufg.inf.model;

public class DTOMovimentacao {

    private String tipo;
    private String numeroIdentificador;
    private Integer quantidade;
    private String nomeCliente;
    private String nomeVendedor;
    private Double valorTotal;

    public DTOMovimentacao(String tipo, String numeroIdentificador,
                           Integer quantidade,
                           String nomeCliente, String nomeVendedor,
                           Double valorTotal) {
        this.tipo = tipo;
        this.numeroIdentificador = numeroIdentificador;
        this.quantidade = quantidade;
        this.nomeCliente = nomeCliente;
        this.nomeVendedor = nomeVendedor;
        this.valorTotal = valorTotal;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNumeroIdentificador() {
        return numeroIdentificador;
    }

    public void setNumeroIdentificador(String numeroIdentificador) {
        this.numeroIdentificador = numeroIdentificador;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getNomeVendedor() {
        return nomeVendedor;
    }

    public void setNomeVendedor(String nomeVendedor) {
        this.nomeVendedor = nomeVendedor;
    }

    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }
}

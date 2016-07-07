package br.ufg.inf.model;

import javax.persistence.Entity;

@Entity
public class Compra extends Movimentacao {

    String numeroCompra;
    Double desconto;
    String nomeComprador;

    public Compra() {

    }

    public Compra(String numeroCompra, Double desconto, String nomeComprador) {
        this.numeroCompra = numeroCompra;
        this.desconto = desconto;
        this.nomeComprador = nomeComprador;
    }

    public String getNumeroCompra() {
        return numeroCompra;
    }

    public void setNumeroCompra(String numeroCompra) {
        this.numeroCompra = numeroCompra;
    }

    public Double getDesconto() {
        return desconto;
    }

    public void setDesconto(Double desconto) {
        this.desconto = desconto;
    }

    public String getNomeComprador() {
        return nomeComprador;
    }

    public void setNomeComprador(String nomeComprador) {
        this.nomeComprador = nomeComprador;
    }

}

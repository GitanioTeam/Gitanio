package br.ufg.inf.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "venda")
public class Venda extends Movimentacao {

    //   @Column(unique = true)
    String numeroVenda;
    Double desconto;
    String nomeVendedor;

    public Venda() {

    }

    public Venda(String numeroVenda, Double desconto, String nomeVendedor) {
        this.numeroVenda = numeroVenda;
        this.desconto = desconto;
        this.nomeVendedor = nomeVendedor;
    }

    public String getNumeroVenda() {
        return numeroVenda;
    }

    public void setNumeroVenda(String numeroVenda) {
        this.numeroVenda = numeroVenda;
    }

    public Double getDesconto() {
        return desconto;
    }

    public void setDesconto(Double desconto) {
        this.desconto = desconto;
    }

    public String getNomeVendedor() {
        return nomeVendedor;
    }

    public void setNomeVendedor(String nomeVendedor) {
        this.nomeVendedor = nomeVendedor;
    }
}

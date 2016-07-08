package br.ufg.inf.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.List;

@Entity
@DiscriminatorValue("VENDA")
public class Venda extends Movimentacao {

    //   @Column(unique = true)
    String numeroVenda;
    Double desconto;
    String nomeVendedor;
    String nomeCliente;

    public Venda() {

    }

    public Venda(String numeroVenda, Double desconto, String nomeVendedor, String nomeCliente,
                 List<Item> listaItens, Double valorTotal) {
        this.valorTotal = valorTotal;
        this.itens = listaItens;
        this.numeroVenda = numeroVenda;
        this.desconto = desconto;
        this.nomeVendedor = nomeVendedor;
        this.nomeCliente = nomeCliente;
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

package br.ufg.inf.model;

import javax.persistence.*;
import java.util.List;

@MappedSuperclass
public abstract class Movimentacao {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    protected Long id;
    @OneToMany
    @JoinColumn(name = "item_id")
    protected List<Item> itens;
    protected Double valorTotal;
    @ManyToOne
    @JoinColumn(name = "pessoa_id")
    protected Pessoa pessoa;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Item> getItens() {
        return itens;
    }

    public void setItens(List<Item> itens) {
        this.itens = itens;
    }

    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }
}

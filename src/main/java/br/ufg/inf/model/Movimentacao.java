package br.ufg.inf.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Inheritance
@Table(name = "movimentacao")
@DiscriminatorColumn(name="tipo_movimentacao")
public abstract class Movimentacao {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    protected Long id;
    @OneToMany
    @JoinColumn(name = "movimentacao_id")
    protected List<Item> itens;
    protected Double valorTotal;

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

}

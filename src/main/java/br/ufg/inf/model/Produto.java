package br.ufg.inf.model;

import javax.persistence.*;

@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    String nome;
    String descricao;
    Double valorUnitario;
    Integer quantidadeMinima;
    @ManyToOne
    @JoinColumn(name = "categoria_id")
    Categoria categoria;

    protected Produto() {
    }

    public Produto(String nome, String descricao) {
        this.nome = nome;
        this.descricao = descricao;
    }

    @Override
    public String toString() {
        return "Produto{" +
            "descricao='" + descricao + '\'' +
            ", nome='" + nome + '\'' +
            ", id=" + id +
            ", categoria=" + categoria +
            '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getValorUnitario() {
        return valorUnitario;
    }

    public void setValorUnitario(Double valorUnitario) {
        this.valorUnitario = valorUnitario;
    }

    public Integer getQuantidadeMinima() {
        return quantidadeMinima;
    }

    public void setQuantidadeMinima(Integer quantidadeMinima) {
        this.quantidadeMinima = quantidadeMinima;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}

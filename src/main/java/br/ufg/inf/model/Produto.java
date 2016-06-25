package br.ufg.inf.model;

import javax.persistence.*;

@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    Integer codigo;
    String descricao;
    Double valorUnitario;
    Integer quantidadeMinima;
    @ManyToOne
    @JoinColumn(name = "categoria_id")
    Categoria categoria;

    protected Produto() {
    }

    public Produto(Integer codigo, String descricao) {
        this.codigo = codigo;
        this.descricao = descricao;
    }

    public Produto(Integer codigo, String descricao, Double valorUnitario, Integer quantidadeMinima, Categoria categoria) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.valorUnitario = valorUnitario;
        this.quantidadeMinima = quantidadeMinima;
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Produto{" +
            "descricao='" + descricao + '\'' +
            ", codigo='" + codigo + '\'' +
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

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
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

package br.ufg.inf.controller.produto;

import br.ufg.inf.model.Categoria;
import br.ufg.inf.model.Produto;
import br.ufg.inf.repository.CategoriaRepository;
import br.ufg.inf.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProdutoController {

    @Autowired
    private ProdutoRepository produtoRepository;
    @Autowired
    private CategoriaRepository categoriaRepository;

    @RequestMapping("/listarProdutos")
    public String listarProdutos(Model model) {

        //TODO: implementar paginação
        Iterable<Produto> listaProdutos = produtoRepository.findAll();

        model.addAttribute("listaProdutos", listaProdutos);
        return "produto/listagemProdutos";
    }

    @RequestMapping("/criaProduto")
    public String produto(Model model) {

        Iterable<Categoria> listaCategorias = categoriaRepository.findAll();

        model.addAttribute("listaCategorias", listaCategorias);

        return "produto/produto";
    }

    @RequestMapping("/criaProduto/{id}")
    public String produto(@PathVariable("id") Long idProduto, Model model) {

        Iterable<Categoria> listaCategorias = categoriaRepository.findAll();
        Produto produto = produtoRepository.findOne(idProduto);

        model.addAttribute("listaCategorias", listaCategorias);
        model.addAttribute("codigo",produto.getCodigo());
        model.addAttribute("descricao",produto.getDescricao());
        model.addAttribute("precoUnitario",produto.getValorUnitario());
        model.addAttribute("quantidadeMinima",produto.getQuantidadeMinima());

        return "produto/produto";
    }

    @RequestMapping("/salvaProduto")
    public String salvaProduto(Integer codigo, String descricao, Long idCategoria,
                               Double valorUnitario, Integer quantidadeMinima, Model model) {

        Produto produto = produtoRepository.findOneByCodigo(codigo);
        Categoria categoria = categoriaRepository.findOne(idCategoria);

        if (produto == null) {

            Produto produtoNovo = new Produto(
                codigo,
                descricao,
                valorUnitario,
                quantidadeMinima,
                categoria
            );
            produtoRepository.save(produtoNovo);
        }
        else{
            produto.setCodigo(codigo);
            produto.setDescricao(descricao);
            produto.setCategoria(categoria);
            produto.setQuantidadeMinima(quantidadeMinima);
            produtoRepository.save(produto);
        }

        Iterable<Produto> listaProdutos = produtoRepository.findAll();
        model.addAttribute("listaProdutos", listaProdutos);

        return "produto/listagemProdutos";
    }

    @RequestMapping("/excluirProduto")
    public String excluirProduto(Long idProduto) {
        produtoRepository.delete(idProduto);

        return "produto/listagemProdutos";
    }

}

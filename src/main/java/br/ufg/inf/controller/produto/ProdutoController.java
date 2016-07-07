package br.ufg.inf.controller.produto;

import br.ufg.inf.model.Categoria;
import br.ufg.inf.model.Produto;
import br.ufg.inf.repository.CategoriaRepository;
import br.ufg.inf.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @RequestMapping("/salvaProduto")
    public String salvaProduto(Integer codigo, String descricao, Long idCategoria,
                               Double valorUnitario, Integer quantidadeMinima, Model model) {

        Categoria categoria = categoriaRepository.findOne(idCategoria);

        Produto produto = new Produto(
            codigo,
            descricao,
            valorUnitario,
            quantidadeMinima,
            categoria
        );
        produtoRepository.save(produto);

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

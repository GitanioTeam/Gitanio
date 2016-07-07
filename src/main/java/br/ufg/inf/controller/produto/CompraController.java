package br.ufg.inf.controller.produto;

import br.ufg.inf.model.Categoria;
import br.ufg.inf.model.Produto;
import br.ufg.inf.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompraController {

    @Autowired
    private ProdutoRepository produtoRepository;

    @RequestMapping("/novaCompra")
    public String novaCompra(Model model) {
        Iterable<Produto> listaProdutos = produtoRepository.findAll();
        model.addAttribute("listaProdutos", listaProdutos);
        return "movimentacao/novaCompra";
    }


}

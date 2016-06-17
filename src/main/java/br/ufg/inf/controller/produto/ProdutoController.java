package br.ufg.inf.controller.produto;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProdutoController {

    @RequestMapping("/listarProdutos")
    public String listarProdutos() {
        return "produto/listagemProdutos";
    }

    @RequestMapping("/criaProduto")
    public String produto() {
        return "produto/produto";
    }

}

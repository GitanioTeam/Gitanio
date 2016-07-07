package br.ufg.inf.controller.produto;

import br.ufg.inf.model.Produto;
import br.ufg.inf.model.Venda;
import br.ufg.inf.repository.ProdutoRepository;
import br.ufg.inf.repository.VendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

import static org.apache.coyote.http11.Constants.a;

@Controller
public class VendaController {

    @Autowired
    VendaRepository vendaRepository;
    @Autowired
    ProdutoRepository produtoRepository;

    @RequestMapping("/novaVenda")
    public String novaVenda(Model model) {

        Iterable<Produto> listaProdutos = produtoRepository.findAll();
        model.addAttribute("listaProdutos", listaProdutos);

        return "movimentacao/novaVenda";
    }

    @RequestMapping(value = "/registrarVenda")
    @ResponseStatus(value = HttpStatus.OK)
    public void registrarVenda(String cliente, String documento, Long produto,
                               Long totalVenda, String nomeVendedor, Double desconto, String produtosAdicionados) {


        Double descontoPercentual = desconto / 100;
        Venda novaVenda = new Venda(documento, descontoPercentual, nomeVendedor);

        vendaRepository.save(novaVenda);

    }

}

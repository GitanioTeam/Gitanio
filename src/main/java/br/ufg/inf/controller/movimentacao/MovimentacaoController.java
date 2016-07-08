package br.ufg.inf.controller.movimentacao;

import br.ufg.inf.model.DTOMovimentacao;
import br.ufg.inf.repository.CompraRepository;
import br.ufg.inf.repository.ProdutoRepository;
import br.ufg.inf.repository.VendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MovimentacaoController {

    @Autowired
    VendaRepository vendaRepository;
    @Autowired
    CompraRepository compraRepository;
    @Autowired
    ProdutoRepository produtoRepository;


    @RequestMapping("/movimentacao")
    public String telaMovimentacao() {

        List<DTOMovimentacao> movimentacoes = new ArrayList<>();

        return "movimentacao/movimentacao";
    }
}

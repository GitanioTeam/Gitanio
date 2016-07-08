package br.ufg.inf.controller.movimentacao;

import br.ufg.inf.model.Compra;
import br.ufg.inf.model.DTOMovimentacao;
import br.ufg.inf.model.Venda;
import br.ufg.inf.repository.CompraRepository;
import br.ufg.inf.repository.ProdutoRepository;
import br.ufg.inf.repository.VendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String telaMovimentacao(Model model) {

        List<DTOMovimentacao> movimentacoesDTO = new ArrayList<>();

        for (Venda venda : vendaRepository.findAll()) {
            movimentacoesDTO.add(new DTOMovimentacao(
                "VENDA",
                venda.getNumeroVenda(),
                venda.getNomeCliente(),
                venda.getNomeVendedor(),
                venda.getValorTotal()
            ));
        }

        for (Compra compra : compraRepository.findAll()) {
            movimentacoesDTO.add(new DTOMovimentacao(
                "COMPRA",
                compra.getNumeroCompra(),
                compra.getNomeComprador(),
                "-",
                compra.getValorTotal()
            ));
        }

        model.addAttribute("movimentacoes", movimentacoesDTO);

        return "movimentacao/movimentacao";
    }
}

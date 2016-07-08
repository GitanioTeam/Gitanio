package br.ufg.inf.controller.produto;

import br.ufg.inf.model.Item;
import br.ufg.inf.model.Produto;
import br.ufg.inf.model.Venda;
import br.ufg.inf.repository.CompraRepository;
import br.ufg.inf.repository.ItemRepository;
import br.ufg.inf.repository.ProdutoRepository;
import br.ufg.inf.repository.VendaRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class VendaController {

    @Autowired
    VendaRepository vendaRepository;
    @Autowired
    ProdutoRepository produtoRepository;
    @Autowired
    ItemRepository itemRepository;

    @RequestMapping("/novaVenda")
    public String novaVenda(Model model) {

        Iterable<Produto> listaProdutos = produtoRepository.findAll();
        model.addAttribute("listaProdutos", listaProdutos);

        return "movimentacao/novaVenda";
    }

    @RequestMapping(value = "/registrarVenda")
    @ResponseStatus(value = HttpStatus.OK)
    public void registrarVenda(String cliente, String documento,
                               Double valorTotal, String vendedor, Double desconto, String itensJSON) {

        List<Item> itens = construirListaItensFromJSON(itensJSON);

        itemRepository.save(itens);
        Double descontoPercentual = desconto / 100;
        Venda novaVenda = new Venda(
            documento,
            descontoPercentual,
            cliente, vendedor,
            itens,
            valorTotal);

        vendaRepository.save(novaVenda);

    }

    private List<Item> construirListaItensFromJSON(String itensJSON){
        ObjectMapper mapper = new ObjectMapper();
        List<Map> listaMapas = null;
        try {
            listaMapas = mapper.readValue(itensJSON, ArrayList.class);
        } catch (IOException e) {
            e.printStackTrace();
        }

        List<Item> itens = new ArrayList<>();

        for (Map itemMap: listaMapas) {
            Long idProduto = Long.parseLong(itemMap.get("idProduto").toString());
            Integer quantidade = Integer.parseInt(itemMap.get("quantidade").toString());
            itens.add(new Item(idProduto, quantidade));
        }
        return itens;
    }

}

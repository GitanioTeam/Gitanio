package br.ufg.inf.controller.movimentacao;

import br.ufg.inf.model.Compra;
import br.ufg.inf.model.Item;
import br.ufg.inf.model.Produto;
import br.ufg.inf.repository.CompraRepository;
import br.ufg.inf.repository.ItemRepository;
import br.ufg.inf.repository.ProdutoRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class CompraController {

    @Autowired
    private ProdutoRepository produtoRepository;
    @Autowired
    private ItemRepository itemRepository;
    @Autowired
    private CompraRepository compraRepository;

    @RequestMapping("/novaCompra")
    public String novaCompra(Model model) {
        Iterable<Produto> listaProdutos = produtoRepository.findAll();
        model.addAttribute("listaProdutos", listaProdutos);
        return "movimentacao/novaCompra";
    }

    @RequestMapping("/registrarCompra")
    @ResponseStatus(HttpStatus.OK)
    public void registrarCompra(String documento, String fornecedor, String itensJSON, String dataCompra, Double valorCompra) {

        List<Item> itens = construirListaItensFromJSON(itensJSON);
        itemRepository.save(itens);

        Date dataCompraFormatada = createDate(dataCompra, "");

        Compra novaCompra = new Compra(
            documento,
            fornecedor,
            dataCompraFormatada,
            valorCompra
        );

        compraRepository.save(novaCompra);
    }

    private Date createDate(String dataText, String format) {
        if (format == null || format.equals("")) {
            format = "dd/MM/yyyy";
        }

        Date data = null;

        try {
            data = new SimpleDateFormat(format).parse(dataText);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return data;
    }

    //TODO: Mover para o serviço de movimentação
    private List<Item> construirListaItensFromJSON(String itensJSON) {
        ObjectMapper mapper = new ObjectMapper();
        List<Map> listaMapas = null;
        try {
            listaMapas = mapper.readValue(itensJSON, ArrayList.class);
        } catch (IOException e) {
            e.printStackTrace();
        }

        List<Item> itens = new ArrayList<>();

        for (Map itemMap : listaMapas) {
            Long idProduto = Long.parseLong(itemMap.get("idProduto").toString());
            Integer quantidade = Integer.parseInt(itemMap.get("quantidade").toString());
            itens.add(new Item(idProduto, quantidade));
        }
        return itens;
    }


}

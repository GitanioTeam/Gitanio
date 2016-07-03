package br.ufg.inf;

import br.ufg.inf.model.Categoria;
import br.ufg.inf.model.Produto;
import br.ufg.inf.repository.CategoriaRepository;
import br.ufg.inf.repository.ProdutoRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/**
 * Classe principal do projeto. Spring boot possui um tomcat já implementado.
 */
@SpringBootApplication
public class GitanioApplication {

    private static final Logger log = LoggerFactory.getLogger(GitanioApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(GitanioApplication.class, args);
    }

    /**
     * Atua como populador do banco de dados.
     *
     * @param produtoRepository
     * @param categoriaRepository
     * @return
     */
    @Bean
    public CommandLineRunner demo(ProdutoRepository produtoRepository, CategoriaRepository categoriaRepository) {
        if (produtoRepository.findOne(1L) != null) {
            return args -> {
            }; // Age como um populador do DB, não fazendo nada
        }
        return args -> {
            Categoria categoriaComida = new Categoria("Comida", "Categoria para alimentos em geral");
            Categoria categoriaBrinquedos = new Categoria("Brinquedos", "Brinquedos da seção infantil");
            categoriaRepository.save(categoriaComida);
            categoriaRepository.save(categoriaBrinquedos);
            produtoRepository.save(new Produto(14567, "Sucrilhos Kellogs", 18.0, 5, categoriaComida));
            produtoRepository.save(new Produto(22345, "Leite de vaca", 2.89, 10, categoriaComida));
            produtoRepository.save(new Produto(37642, "Jessie - Toy Story", 187.99, 1, categoriaBrinquedos));
            produtoRepository.save(new Produto(4364, "Horácio - Pelúcia", 57.50, 3, categoriaBrinquedos));
            produtoRepository.findAll().forEach(produto -> log.info(produto.toString()));
            Produto horacio = produtoRepository.findOne(4L);
            log.info("Found : " + horacio);
            categoriaBrinquedos = categoriaRepository.findByNome("Brinquedos");
            horacio.setCategoria(categoriaBrinquedos);
            produtoRepository.save(horacio);
            log.info("By product code:");
            produtoRepository.findByCodigo(4).forEach(produto -> log.info(produto.toString()));
        };
    }

}

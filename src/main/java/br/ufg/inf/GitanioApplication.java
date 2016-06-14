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

@SpringBootApplication
public class GitanioApplication {

    private static final Logger log = LoggerFactory.getLogger(GitanioApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(GitanioApplication.class, args);
    }

    @Bean
    public CommandLineRunner demo(ProdutoRepository produtoRepository, CategoriaRepository categoriaRepository) {
        return (args) -> {
            produtoRepository.save(new Produto("Sucrilhos", "Kellogs"));
            produtoRepository.save(new Produto("Leite de Vaca", "De Vaca"));
            produtoRepository.save(new Produto("Leite de Cabra", "De cabra mesmo"));
            produtoRepository.save(new Produto("Alface", "Tomate"));

            // All saved!
            for (Produto produto : produtoRepository.findAll()) {
                log.info(produto.toString());
            }

            Categoria categoriaComida = new Categoria("Comida", "Yummy");
            categoriaRepository.save(categoriaComida);

            Produto alface = produtoRepository.findOne(4L);
            log.info("Found : " + alface);
            categoriaComida = categoriaRepository.findOne(1L);
            alface.setCategoria(categoriaComida);
            produtoRepository.save(alface);

            log.info("By last name:");
            for (Produto produto : produtoRepository.findByNome("Alface")) {
                log.info(produto.toString());
            }
        };
    }
}

package br.ufg.inf.repository;

import br.ufg.inf.model.Produto;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource(collectionResourceRel = "produtos", path = "produtos")
public interface ProdutoRepository extends PagingAndSortingRepository<Produto, Long> {

    List<Produto> findByCodigo(@Param("codigo") Integer codigo);

}

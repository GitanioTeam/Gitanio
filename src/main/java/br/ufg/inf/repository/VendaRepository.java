package br.ufg.inf.repository;

import br.ufg.inf.model.Venda;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "vendas", path = "vendas")
public interface VendaRepository extends PagingAndSortingRepository<Venda, Long> {

    Venda findByNumeroVenda(@Param("numeroVenda") String numeroVenda);

}

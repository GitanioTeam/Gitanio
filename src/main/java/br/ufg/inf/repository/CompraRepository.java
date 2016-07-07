package br.ufg.inf.repository;

import br.ufg.inf.model.Compra;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "compras", path = "compras")
public interface CompraRepository extends PagingAndSortingRepository<Compra, Long> {

    Compra findByNumeroCompra(@Param("numeroCompra") String numeroCompra);

}

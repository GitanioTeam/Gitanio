package br.ufg.inf.repository;

import br.ufg.inf.model.Item;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "itens", path = "itens")
public interface ItemRepository extends PagingAndSortingRepository<Item, Long> {

}

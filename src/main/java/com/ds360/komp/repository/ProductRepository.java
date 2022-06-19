package com.ds360.komp.repository;

import com.ds360.komp.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query(value = "SELECT * FROM Product LIMIT ?1", nativeQuery = true)
    List<Product> findRowsLimit(Long count);

    @Query("SELECT e FROM Product e WHERE e.category.categoryId = ?1")
    List<Product> findAllByCategory(Long category_id);

    @Query("SELECT e FROM Product e WHERE e.promo = true AND e.visible = true ")
    List<Product> findPromo();
}

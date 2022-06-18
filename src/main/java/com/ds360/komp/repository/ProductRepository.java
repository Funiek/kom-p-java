package com.ds360.komp.repository;

import com.ds360.komp.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("SELECT u FROM Product u WHERE u.visible = true")
    List<Product> findAllProducts();

    @Query("SELECT e FROM Product e WHERE e.category.categoryId = ?1")
    List<Product> findAllByCategory(Long category_id);
}

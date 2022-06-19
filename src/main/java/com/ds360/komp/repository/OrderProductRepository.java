package com.ds360.komp.repository;

import com.ds360.komp.model.OrderProduct;
import com.ds360.komp.model.PlacedOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrderProductRepository extends JpaRepository<OrderProduct, Long> {
    @Query(value = "SELECT * FROM order_product WHERE order_id = ?1 ", nativeQuery = true)
    List<OrderProduct> findByOrder(Long order_id);
}

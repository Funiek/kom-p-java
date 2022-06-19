package com.ds360.komp.repository;

import com.ds360.komp.model.PlacedOrder;
import com.ds360.komp.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PlacedOrderRepository extends JpaRepository<PlacedOrder, Long> {
    @Query(value = "SELECT * FROM placed_order ORDER BY order_id DESC LIMIT 1 ", nativeQuery = true)
    PlacedOrder findLast();

    @Query(value = "SELECT * FROM placed_order WHERE account_id = ?1 ", nativeQuery = true)
    List<PlacedOrder> findByAccount(Long account_id);
}

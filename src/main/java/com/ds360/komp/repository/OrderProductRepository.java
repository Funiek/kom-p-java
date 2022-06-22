package com.ds360.komp.repository;

import com.ds360.komp.model.OrderProduct;
import com.ds360.komp.model.OrderProductKey;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderProductRepository extends JpaRepository<OrderProduct, OrderProductKey> {
    
    List<OrderProduct> findByOrderOrderId(Long orderId);
    
}

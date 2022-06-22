package com.ds360.komp.repository;

import com.ds360.komp.model.WarehouseProduct;
import com.ds360.komp.model.WarehouseProductKey;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WarehouseProductRepository extends JpaRepository<WarehouseProduct, WarehouseProductKey> {}

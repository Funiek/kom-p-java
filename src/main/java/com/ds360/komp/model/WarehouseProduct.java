package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "warehouse_product", schema = "public", catalog = "KompDB")
public class WarehouseProduct {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EmbeddedId
    private WarehouseProductKey warehouseProductId;
    @ManyToOne
    @MapsId("warehouseId")
    @JoinColumn(name = "warehouse_id")
    private Warehouse warehouse;

    @ManyToOne
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    private Product product;

    @Basic
    @Column(name = "qty")
    private short qty;

}

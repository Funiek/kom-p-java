package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "warehouse_product", schema = "public", catalog = "KompDB")
public class WarehouseProduct {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "warehouse_product_id")
    private int warehouseProductId;
    @Basic
    @Column(name = "warehouse_id")
    private long warehouseId;
    @Basic
    @Column(name = "product_id")
    private long productId;
    @Basic
    @Column(name = "qty")
    private short qty;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WarehouseProduct that = (WarehouseProduct) o;

        if (warehouseProductId != that.warehouseProductId) return false;
        if (warehouseId != that.warehouseId) return false;
        if (productId != that.productId) return false;
        if (qty != that.qty) return false;

        return true;
    }

}

package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class WarehouseProductKey implements Serializable {
    @Column(name = "warehouse_id")
    Long warehouseId;

    @Column(name = "product_id")
    Long productId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        WarehouseProductKey that = (WarehouseProductKey) o;
        return warehouseId != null && Objects.equals(warehouseId, that.warehouseId)
                && productId != null && Objects.equals(productId, that.productId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(warehouseId, productId);
    }
}

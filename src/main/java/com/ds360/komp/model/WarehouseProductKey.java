package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class WarehouseProductKey implements Serializable {
    
    private long warehouse;

    private long product;
    
    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        WarehouseProductKey that = (WarehouseProductKey) o;
        return getWarehouse() == that.getWarehouse() && getProduct() == that.getProduct();
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(warehouse, product);
    }
}

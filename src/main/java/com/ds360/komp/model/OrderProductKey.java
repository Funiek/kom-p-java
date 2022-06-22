package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

//@Embeddable
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderProductKey implements Serializable {
    
    private long order;

    private long product;
    
    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        OrderProductKey that = (OrderProductKey) o;
        return getOrder() == that.getOrder() && getProduct() == that.getProduct();
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(order, product);
    }
}

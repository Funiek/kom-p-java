package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "order_product", schema = "public", catalog = "KompDB")
@IdClass(OrderProductKey.class)
public class OrderProduct {
    
    @Id
    @ManyToOne
    @JoinColumn(name = "order_id")
    private PlacedOrder order;
    
    @Id
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @ToString.Include
    @Column(name = "qty", nullable = false)
    private short qty;
    
    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        OrderProduct that = (OrderProduct) o;
        return getQty() == that.getQty() && Objects.equals(getOrder(), that.getOrder()) && Objects.equals(
                getProduct(), that.getProduct());
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(getOrder(), getProduct(), getQty());
    }
    
}

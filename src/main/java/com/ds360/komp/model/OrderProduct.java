package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "order_product", schema = "public", catalog = "KompDB")
public class OrderProduct {
    @EmbeddedId
    private OrderProductKey orderProductId = new OrderProductKey();
    @ManyToOne
    @MapsId("orderId")
    @JoinColumn(name = "order_id")
    private PlacedOrder placedOrder;
    @ManyToOne
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    private Product product;

    @Basic
    @Column(name = "qty")
    private short qty;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderProduct that = (OrderProduct) o;

        if (orderProductId != that.orderProductId) return false;
        if (placedOrder != that.placedOrder) return false;
        if (product != that.product) return false;
        if (qty != that.qty) return false;

        return true;
    }
}

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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "order_product_id")
    private Long orderProductId;
    @Basic
    @Column(name = "order_id")
    private Long orderId;
    @Basic
    @Column(name = "product_id")
    private Long productId;
    @Basic
    @Column(name = "qty")
    private short qty;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderProduct that = (OrderProduct) o;

        if (orderProductId != that.orderProductId) return false;
        if (orderId != that.orderId) return false;
        if (productId != that.productId) return false;
        if (qty != that.qty) return false;

        return true;
    }
}

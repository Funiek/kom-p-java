package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "order")
public class Order {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "order_id")
    private Long orderId;

    @Basic
    @Column(name = "delivery")
    private String delivery;

    @Basic
    @Column(name = "payment")
    private String payment;

    @Basic
    @Column(name = "amount")
    private BigDecimal amount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "account_id")
    @ToString.Exclude
    private Account account;

    @OneToMany(mappedBy = "order")
    private List<OrderProduct> orderProductList = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return orderId.equals(order.orderId) && delivery.equals(order.delivery) && payment.equals(order.payment) && amount.equals(order.amount) && Objects.equals(account, order.account) && Objects.equals(orderProductList, order.orderProductList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, delivery, payment, amount, account, orderProductList);
    }
}

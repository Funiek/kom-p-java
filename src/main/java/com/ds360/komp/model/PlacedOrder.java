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
@Table(name = "placed_order")
public class PlacedOrder {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "order_id")
    private Long orderId;

    @Basic
    @Column(name = "delivery")
    private String delivery = "Osobisty";

    @Basic
    @Column(name = "payment")
    private String payment = "BLIK";

    @Basic
    @Column(name = "amount")
    private BigDecimal amount;

    @Basic
    @Column(name = "first_name")
    private String firstName;

    @Basic
    @Column(name = "last_name")
    private String lastName;

    @Basic
    @Column(name = "address")
    private String address;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "account_id")
    @ToString.Exclude
    private Account account;

    @OneToMany(mappedBy = "order",
            fetch = FetchType.EAGER)
    private List<OrderProduct> orderProductList = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PlacedOrder that = (PlacedOrder) o;
        return orderId.equals(that.orderId) && delivery.equals(that.delivery) && payment.equals(that.payment) && amount.equals(that.amount) && firstName.equals(that.firstName) && lastName.equals(that.lastName) && address.equals(that.address) && account.equals(that.account) && Objects.equals(orderProductList, that.orderProductList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, delivery, payment, amount, firstName, lastName, address, account, orderProductList);
    }
}

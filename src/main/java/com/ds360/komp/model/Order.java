package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "Order")
public class Order {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "order_id")
    private Long orderId;
    @Basic
    @Column(name = "login")
    private String login;
    @Basic
    @Column(name = "password")
    private String password;
    @Basic
    @Column(name = "phone")
    private String phone;
    @Basic
    @Column(name = "email")
    private String email;
    @Basic
    @Column(name = "address")
    private String address;
    @Basic
    @Column(name = "role")
    private String role;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (orderId != order.orderId) return false;
        if (login != null ? !login.equals(order.login) : order.login != null) return false;
        if (password != null ? !password.equals(order.password) : order.password != null) return false;
        if (phone != null ? !phone.equals(order.phone) : order.phone != null) return false;
        if (email != null ? !email.equals(order.email) : order.email != null) return false;
        if (address != null ? !address.equals(order.address) : order.address != null) return false;
        if (role != null ? !role.equals(order.role) : order.role != null) return false;

        return true;
    }
}

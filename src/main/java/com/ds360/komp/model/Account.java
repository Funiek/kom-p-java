package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "account")
public class Account {
    @ToString.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "account_id", nullable = false)
    private Long accountId;
    @ToString.Include
    @Column(name = "login")
    private String login;
    @ToString.Include
    @Column(name = "password")
    private String password;
    @ToString.Include
    @Column(name = "phone")
    private String phone;
    @ToString.Include
    @Column(name = "email")
    private String email;
    @ToString.Include
    @Column(name = "address")
    private String address;
    @ToString.Include
    @Column(name = "role")
    private String role = "Uzytkownik";


    @OneToMany(mappedBy = "account", fetch = FetchType.EAGER)
    private List<PlacedOrder> placedOrders = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Account account = (Account) o;
        return accountId.equals(account.accountId) && login.equals(account.login) && password.equals(account.password) && phone.equals(account.phone) && email.equals(account.email) && address.equals(account.address) && role.equals(account.role) && Objects.equals(placedOrders, account.placedOrders);
    }

    @Override
    public int hashCode() {
        return Objects.hash(accountId, login, password, phone, email, address, role, placedOrders);
    }
}

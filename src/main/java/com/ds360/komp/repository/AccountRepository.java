package com.ds360.komp.repository;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AccountRepository extends JpaRepository<Account,Long> {
    @Query("SELECT e FROM Account e WHERE e.login = ?1 AND e.password = ?2")
    Account findByLoginAndPassword(String login, String password);
}

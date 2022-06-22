package com.ds360.komp.service;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.Product;
import com.ds360.komp.repository.AccountRepository;
import com.ds360.komp.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AccountService {
    final AccountRepository accountRepository;

    public void save(Account account) {
        accountRepository.save(account);
    }

    public List<Account> listAll() {
        return accountRepository.findAll();
    }

    public Account get(Long id) {
        return accountRepository.findById(id).get();
    }

    public Account getByLoginAndPassword(String login, String password) {
        return accountRepository.findByLoginAndPassword(login,password);
    }

    public void delete(Long id) {
        accountRepository.deleteById(id);
    }

}

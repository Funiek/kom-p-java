package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.repository.AccountRepository;
import com.ds360.komp.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
@RequestMapping(value = "/account")
@RequiredArgsConstructor
public class AccountController {
    final AccountService accountService;

    @GetMapping("/signIn")
    public ModelAndView signIn() {
        return new ModelAndView("account/signIn","account",new Account());
    }

    @PostMapping("/signIn")
    @Transactional
    public String signIn(@ModelAttribute Account account, HttpServletRequest request) {

        HttpSession session = request.getSession();

        Account accountFromRepo = accountService.getByLoginAndPassword(account.getLogin(), account.getPassword());

        if(accountFromRepo != null) {
            session.setAttribute("accountId",accountFromRepo.getAccountId());
            session.setAttribute("accountLogin",accountFromRepo.getLogin());
            session.setAttribute("logged","true");
        }

        return "redirect:/";
    }

    @GetMapping("/signUp")
    public ModelAndView signUp() {
        return new ModelAndView("account/signUp","account",new Account());
    }

    @PostMapping("/signUp")
    @Transactional
    public String signUp(@ModelAttribute Account account) {
        account.setRole("Uzytkownik");
        accountService.save(account);
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();

        session.setAttribute("accountId",null);
        session.setAttribute("accountLogin",null);
        session.setAttribute("logged",null);

        return "redirect:/";
    }
}

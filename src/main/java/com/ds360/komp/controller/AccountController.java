package com.ds360.komp.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/account")
@RequiredArgsConstructor
public class AccountController {
    @GetMapping("/signIn")
    public String signIn() {
        return "account/signIn";
    }

    @GetMapping("/signUp")
    public String signUp() {
        return "account/signUp";
    }
}

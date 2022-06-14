package com.ds360.komp.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/cart")
@RequiredArgsConstructor
public class CartController {
    @GetMapping
    public String cart() {
        return "cart/cart";
    }
}

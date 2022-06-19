package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.repository.OrderProductRepository;
import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.OrderProductService;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
@RequiredArgsConstructor
public class AdminController {
    final AccountService accountService;
    final OrderProductRepository orderProductRepository;
    final ProductService productService;

    @GetMapping
    public String index() {
        return "admin/index";
    }

    @GetMapping("/orderList")
    @Transactional
    public ModelAndView orderList() {
        return new ModelAndView("admin/orderList","orderProductList",orderProductRepository.findAll());
    }

    @GetMapping("/productList")
    @Transactional
    public ModelAndView productList() {
        return new ModelAndView("admin/productList","productList",productService.listAll());
    }

    @GetMapping("/accountList")
    @Transactional
    public ModelAndView accountList() {
        return new ModelAndView("admin/accountList","accountList",accountService.listAll());
    }
}

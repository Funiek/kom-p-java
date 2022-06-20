package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.Category;
import com.ds360.komp.model.Product;
import com.ds360.komp.repository.CategoryRepository;
import com.ds360.komp.repository.OrderProductRepository;
import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
@RequestMapping(value = "/admin")
@RequiredArgsConstructor
public class AdminController {
    final CategoryRepository categoryRepository;
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

    @GetMapping("/productCreate")
    @Transactional
    public ModelAndView productCreate() {
        return new ModelAndView("admin/productCreate","product",new Product());
    }

    @PostMapping("/productCreate")
    @Transactional
    public String productCreate(@ModelAttribute Product product) {
        product.setWarehouseProducts(null);
        product.setOrderProductList(null);

        Optional<Category> category = categoryRepository.findById(product.getCategory().getCategoryId());
        category.ifPresent(product::setCategory);

        productService.save(product);
        return "admin/index";
    }

    @GetMapping("/accountList")
    @Transactional
    public ModelAndView accountList() {
        return new ModelAndView("admin/accountList","accountList",accountService.listAll());
    }

    @GetMapping("/accountCreate")
    @Transactional
    public ModelAndView accountCreate() {
        return new ModelAndView("admin/accountCreate","account",new Account());
    }

    @PostMapping("/accountCreate")
    @Transactional
    public String accountCreate(@ModelAttribute Account account) {
        account.setPlacedOrders(null);
        accountService.save(account);
        return "admin/index";
    }
}

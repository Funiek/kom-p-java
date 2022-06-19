package com.ds360.komp.controller;


import com.ds360.komp.model.Product;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping(value = "/category")
@RequiredArgsConstructor
public class CategoryController {
    final ProductService productService;
    @GetMapping("/{id}")
    @Transactional
    public ModelAndView category(@PathVariable String id) {
        List<Product> productList = null;

        if(Objects.equals(id, "promocje")) {
            productList = productService.listPromo();
        }
        else productList = productService.listByCategory(Long.valueOf(id));


        return new ModelAndView("category/list","productList",productList);
    }
}

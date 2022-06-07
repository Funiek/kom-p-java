package com.ds360.komp.controller;

import com.ds360.komp.model.Product;
import com.ds360.komp.repository.ProductRepository;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import javax.naming.NamingException;
import java.sql.SQLException;
import java.util.List;


@Controller
@RequestMapping(value = "/product")
@RequiredArgsConstructor
public class
ProductController {
    final ProductRepository productRepository;

    @GetMapping
    public ModelAndView product()
    {
        List<Product> productList = productRepository.findAll();

        return new ModelAndView("product","productList", productList);
    }

    @PostMapping
    public String product(@ModelAttribute("product") Product product) throws NamingException, SQLException
    {
        return "submit";
    }
}

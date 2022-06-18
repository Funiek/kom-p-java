package com.ds360.komp.controller;

import com.ds360.komp.model.Product;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;


@Controller
@RequestMapping(value = "/product")
@RequiredArgsConstructor
public class
ProductController {
    final ProductService productService;

    @GetMapping
    @Transactional
    public ModelAndView product()
    {
        List<Product> productList = productService.listAll();

        return new ModelAndView("product/list","productList", productList);
    }

    @GetMapping("/{id}")
    public ModelAndView details(@PathVariable String id) {

        Product product = productService.get(Long.valueOf(id));

        return new ModelAndView("product/details","product",product);
    }

    @PostMapping
    public String product(@ModelAttribute("product") Product product, HttpServletRequest request) throws NamingException, SQLException
    {
        HttpSession session = request.getSession();
        session.setAttribute("product",product.getProductId());
        return "redirect:/";
    }
}

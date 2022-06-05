package com.ds360.komp.controllers;

import com.ds360.komp.models.Product;
import com.ds360.komp.utils.Logged;
import com.ds360.komp.utils.ObjectActionInterceptor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.interceptor.Interceptor;
import javax.interceptor.Interceptors;


@Controller
@RequestMapping(value = "/product")
public class
ProductController {
    @GetMapping
    public ModelAndView product()
    {
        return new ModelAndView("product","product",new Product());
    }

    @Interceptors(ObjectActionInterceptor.class)
    @PostMapping
    public String product(@ModelAttribute("product") Product product)
    {

        return "submit";
    }
}

package com.ds360.komp.controller;

import com.ds360.komp.model.Product;
import com.ds360.komp.utils.ObjectActionInterceptor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.interceptor.Interceptors;
import javax.naming.NamingException;
import java.sql.SQLException;


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
    public String product(@ModelAttribute("product") Product product) throws NamingException, SQLException
    {
        return "submit";
    }
}

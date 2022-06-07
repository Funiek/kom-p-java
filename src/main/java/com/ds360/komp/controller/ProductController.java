package com.ds360.komp.controller;

import com.ds360.komp.dao.ProductDao;
import com.ds360.komp.dao.ProductDaoJpaImpl;
import com.ds360.komp.model.Product;
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
public class
ProductController {
    @GetMapping
    public ModelAndView product()
    {
        ProductDao productDao = new ProductDaoJpaImpl();
        List<Product> productList = productDao.findAll();

        return new ModelAndView("product","productList", productList);
    }

    @PostMapping
    public String product(@ModelAttribute("product") Product product) throws NamingException, SQLException
    {
        return "submit";
    }
}

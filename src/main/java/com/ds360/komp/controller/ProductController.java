package com.ds360.komp.controller;

import com.ds360.komp.model.CartProduct;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;


@Controller
@RequestMapping(value = "/product")
@RequiredArgsConstructor
public class
ProductController {
    final ProductService productService;

    @GetMapping("/{id}")
    public ModelAndView details(@PathVariable String id) {

        Product product = productService.get(Long.valueOf(id));

        return new ModelAndView("product/details","cartProduct", new CartProduct(product,0));
    }

    @PostMapping
    public String product(@ModelAttribute CartProduct cartProduct, HttpServletRequest request) throws NamingException, SQLException
    {
        List<CartProduct> cart;

        HttpSession session = request.getSession();
        Object attr = session.getAttribute("cart");
        if(attr != null) cart = (List<CartProduct>) attr ;
        else cart = new ArrayList<>();

        for(CartProduct product: cart) {
            if(Objects.equals(product.getProduct().getProductId(), cartProduct.getProduct().getProductId())) {
                product.setQty(product.getQty() + cartProduct.getQty());
                session.setAttribute("cart",cart);
                return "redirect:/";
            }
        }

        Product product = productService.get(cartProduct.getProduct().getProductId());
        cartProduct.setProduct(product);
        cart.add(cartProduct);

        session.setAttribute("cart",cart);
        return "redirect:/";
    }
    
}

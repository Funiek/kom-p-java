package com.ds360.komp.controller;


import com.ds360.komp.model.CartProduct;
import com.ds360.komp.model.CartViewModel;
import com.ds360.komp.model.Product;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping(value = "/cart")
@RequiredArgsConstructor
public class CartController {
    final ProductService productService;
    @GetMapping
    public ModelAndView cart(HttpServletRequest request) {
        CartViewModel cartViewModel = new CartViewModel();

        List<CartProduct> cartProducts;

        Object attr = request.getSession().getAttribute("cart");
        if(attr != null) cartProducts = (List<CartProduct>) attr ;
        else cartProducts = new ArrayList<>();

        List<Product> productList = productService.list(4L);

        cartViewModel.setCartProducts(cartProducts);
        cartViewModel.setRecommendedProducts(productList);

        return new ModelAndView("cart/cart","cart",cartViewModel);
    }

    @GetMapping("/delete/{id}")
    public String deleteProductFromCart(@PathVariable String id, HttpServletRequest request) {

        List<CartProduct> cartProducts;

        HttpSession session = request.getSession();
        Object attr = request.getSession().getAttribute("cart");
        if(attr != null) cartProducts = (List<CartProduct>) attr ;
        else cartProducts = new ArrayList<>();

        cartProducts.removeIf(product -> Objects.equals(product.getProduct().getProductId(), Long.valueOf(id)));

        session.setAttribute("cart",cartProducts);

        return "redirect:/cart";
    }
}

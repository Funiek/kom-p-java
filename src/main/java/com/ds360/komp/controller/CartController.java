package com.ds360.komp.controller;


import com.ds360.komp.model.CartProduct;
import com.ds360.komp.model.CartViewModel;
import com.ds360.komp.model.Product;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/cart")
@RequiredArgsConstructor
public class CartController {
    final ProductService productService;
    @GetMapping
    public ModelAndView cart(HttpServletRequest request) {
        CartViewModel cartViewModel = new CartViewModel();

        List<CartProduct> cartProducts = (List<CartProduct>) request.getSession().getAttribute("cart");
        List<Product> productList = productService.list(4L);

        cartViewModel.setCartProducts(cartProducts);
        cartViewModel.setRecommendedProducts(productList);

        return new ModelAndView("cart/cart","cart",cartViewModel);
    }
}

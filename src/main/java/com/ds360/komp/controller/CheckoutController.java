package com.ds360.komp.controller;

import com.ds360.komp.model.*;
import com.ds360.komp.repository.OrderProductRepository;
import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.PlacedOrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/checkout")
@RequiredArgsConstructor
public class CheckoutController {
    final AccountService accountService;
    final PlacedOrderService placedOrderService;
    final OrderProductRepository orderProductRepository;
    @GetMapping("/describeBuyer")
    public ModelAndView describeBuyer() {
        return new ModelAndView("checkout/describeBuyer","account",new Account());
    }

    @PostMapping("/describeBuyer")
    @Transactional
    public ModelAndView describeBuyer(@ModelAttribute Account account, HttpServletRequest request) {

        HttpSession session = request.getSession();

        Account accountFromRepo = accountService.getByLoginAndPassword(account.getLogin(), account.getPassword());

        if(accountFromRepo != null) {
            session.setAttribute("accountId",accountFromRepo.getAccountId());
            session.setAttribute("accountLogin",accountFromRepo.getLogin());
            session.setAttribute("logged","true");

            CheckoutViewModel checkoutViewModel = new CheckoutViewModel();

            List<CartProduct> cartProducts = this.getCartProducts(session);

            PlacedOrder order = new PlacedOrder();
            order.setAccount(accountFromRepo);
            checkoutViewModel.setOrder(order);
            checkoutViewModel.setCartProducts(cartProducts);

            return new ModelAndView("checkout/details","checkoutViewModel", checkoutViewModel);
        }
        else return new ModelAndView("redirect:/");

    }

    @GetMapping("/details")
    public ModelAndView details(HttpServletRequest request) {
        HttpSession session = request.getSession();
        CheckoutViewModel checkoutViewModel = new CheckoutViewModel();

        Object obj = session.getAttribute("accountId");
        if(obj != null) {
            Account account = accountService.get(Long.valueOf(obj.toString()));
            PlacedOrder order = new PlacedOrder();
            order.setAccount(account);
            checkoutViewModel.setOrder(order);
        }

        List<CartProduct> cartProducts = this.getCartProducts(session);
        checkoutViewModel.setCartProducts(cartProducts);

        return new ModelAndView("checkout/details","checkoutViewModel", checkoutViewModel);

    }

    @PostMapping("/details")
    public String details(@ModelAttribute CheckoutViewModel checkoutViewModel, HttpServletRequest request){
        HttpSession session = request.getSession();

        PlacedOrder order = checkoutViewModel.getOrder();

        Account account;

        if(checkoutViewModel.getOrder().getAccount().getAccountId()!=null) {
            account = accountService.get(checkoutViewModel.getOrder().getAccount().getAccountId());
            order.setAccount(account);
        }
        else order.setAccount(null);

        BigDecimal amount = BigDecimal.ZERO;

        List<CartProduct> cartProducts = this.getCartProducts(session);
        for(CartProduct cartProduct: cartProducts) {
            amount = amount.add(cartProduct.getProduct().getPrice());
        }

        order.setAmount(amount);
        order.setOrderProductList(null);

        placedOrderService.save(order);

        OrderProduct orderProduct;

        for(CartProduct cartProduct: cartProducts) {
            orderProduct = new OrderProduct();
            PlacedOrder internalOrder = placedOrderService.findLast();

            orderProduct.setOrder(internalOrder);
            orderProduct.setProduct(cartProduct.getProduct());
            orderProduct.setQty((short) cartProduct.getQty());

            orderProductRepository.save(orderProduct);
        }

        return "checkout/thanks";
    }

    private List<CartProduct> getCartProducts(HttpSession session) {
        List<CartProduct> cartProducts;

        Object attr = session.getAttribute("cart");
        if(attr != null) cartProducts = (List<CartProduct>) attr ;
        else cartProducts = new ArrayList<>();

        return cartProducts;
    }
}

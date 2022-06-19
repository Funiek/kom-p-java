package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.CartProduct;
import com.ds360.komp.model.OrderProduct;
import com.ds360.komp.model.PlacedOrder;
import com.ds360.komp.repository.AccountRepository;
import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.OrderProductService;
import com.ds360.komp.service.PlacedOrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Controller
@RequestMapping(value = "/account")
@RequiredArgsConstructor
public class AccountController {
    final AccountService accountService;

    final OrderProductService orderProductService;
    final PlacedOrderService placedOrderService;

    @GetMapping("/signIn")
    public ModelAndView signIn() {
        return new ModelAndView("account/signIn","account",new Account());
    }

    @PostMapping("/signIn")
    @Transactional
    public String signIn(@ModelAttribute Account account, HttpServletRequest request) {

        HttpSession session = request.getSession();

        Account accountFromRepo = accountService.getByLoginAndPassword(account.getLogin(), account.getPassword());

        if(accountFromRepo != null) {
            session.setAttribute("accountId",accountFromRepo.getAccountId());
            session.setAttribute("accountLogin",accountFromRepo.getLogin());
            session.setAttribute("logged","true");
            if(accountFromRepo.getRole().equals("Administrator")) session.setAttribute("administrator","true");
            if(accountFromRepo.getRole().equals("Moderator")) session.setAttribute("moderator","true");
        }

        return "redirect:/";
    }

    @GetMapping("/signUp")
    public ModelAndView signUp() {
        return new ModelAndView("account/signUp","account",new Account());
    }

    @PostMapping("/signUp")
    @Transactional
    public String signUp(@ModelAttribute Account account) {
        account.setRole("Uzytkownik");
        accountService.save(account);
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();

        session.setAttribute("accountId",null);
        session.setAttribute("accountLogin",null);
        session.setAttribute("logged",null);
        session.setAttribute("role",null);

        return "redirect:/";
    }

    @GetMapping("/details")
    @Transactional
    public ModelAndView details(HttpServletRequest request){
        HttpSession session = request.getSession();

        Object attr = session.getAttribute("logged");
        if(attr != "true") return new ModelAndView("redirect:/");

        Account account = accountService.get(Long.valueOf(session.getAttribute("accountId").toString()));
        List<PlacedOrder> placedOrderList = placedOrderService.findByAccount(account.getAccountId());
        for(PlacedOrder placedOrder: placedOrderList) {
            placedOrder.setOrderProductList(null);
        }
        account.setPlacedOrders(placedOrderList);

        return new ModelAndView("/account/details","account",account);
    }

    @GetMapping("/order/{id}")
    @Transactional
    public ModelAndView details(@PathVariable String id, HttpServletRequest request){
        HttpSession session = request.getSession();

        Object attr = session.getAttribute("logged");
        if(attr != "true") return new ModelAndView("redirect:/");

        Long account_id = Long.valueOf(session.getAttribute("accountId").toString());
        List<PlacedOrder> placedOrderList = placedOrderService.findByAccount(account_id);
        PlacedOrder returnOrder = null;

        List<OrderProduct> orderProductList = orderProductService.listAll();

        List<OrderProduct> accountOrderProductList = new ArrayList<>();

        for(OrderProduct orderProduct: orderProductList) {
            for(PlacedOrder placedOrder: placedOrderList) {
                if(placedOrder.getOrderId()==orderProduct.getPlacedOrder().getOrderId()) accountOrderProductList.add(orderProduct);
            }
        }


        /*List<PlacedOrder> placedOrderList = placedOrderService.findByAccount(account.getAccountId());


        for(PlacedOrder placedOrder: placedOrderList) {
            placedOrder.setOrderProductList(null);
            if (Objects.equals(placedOrder.getOrderId(), Long.valueOf(id))) returnOrder = placedOrder;

        }
        account.setPlacedOrders(null);*/



        return new ModelAndView("/account/order","orderProductList", accountOrderProductList);
    }
}

package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.CheckoutViewModel;
import com.ds360.komp.model.Order;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/checkout")
@RequiredArgsConstructor
public class CheckoutController {
    @GetMapping("/describeBuyer")
    public ModelAndView describeBuyer() {
        return new ModelAndView("checkout/describeBuyer","account",new Account());
    }

    @PostMapping("/describeBuyer")
    public ModelAndView describeBuyer(@ModelAttribute Account account, HttpServletRequest request) {
        return new ModelAndView("checkout/details","order",new CheckoutViewModel());
    }

    @GetMapping("/details")
    public ModelAndView details() {
        return new ModelAndView("checkout/details","order",new CheckoutViewModel());
    }

    @PostMapping("/details")
    public String details(@ModelAttribute Order order, HttpServletRequest request){
        return "checkout/thanks";
    }
}

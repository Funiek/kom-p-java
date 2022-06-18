package com.ds360.komp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "/")
public class HomeController {
    @RequestMapping(value = "/")
    public String index() {
        return "../../index";
    }

}

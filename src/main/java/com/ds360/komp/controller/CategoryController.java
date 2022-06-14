package com.ds360.komp.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/category")
@RequiredArgsConstructor
public class CategoryController {
    @GetMapping("/{id}")
    public String category(@PathVariable String id) {
        return "category/list";
    }
}

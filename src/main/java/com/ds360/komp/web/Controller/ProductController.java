package com.ds360.komp.web.Controller;

import com.ds360.komp.web.Model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
    @GetMapping(value = "/product")
    public ModelAndView product() {
        return new ModelAndView("product","command",new Product());
    }

    @PostMapping(value = "/addProduct")
    public String addProduct(@ModelAttribute("SpringWeb")Product product, ModelMap model) {
        model.addAttribute("id",product.getId());
        model.addAttribute("name",product.getName());
        model.addAttribute("price",product.getPrice());

        return "result";
    }
}

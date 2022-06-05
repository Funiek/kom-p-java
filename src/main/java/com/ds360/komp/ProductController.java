package com.ds360.komp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
    @RequestMapping("/productForm")
    public String bookingForm(Model model)
    {
        //create a reservation object
        Product product = new Product();
        //provide reservation object to the model
        model.addAttribute("product", product);
        return "product";
    }

    @RequestMapping("/submitForm")
    public String submitForm(@ModelAttribute("product") Product product)
    {
        return "submit";
    }
}

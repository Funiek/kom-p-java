package com.ds360.komp.controller;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.Category;
import com.ds360.komp.model.Product;
import com.ds360.komp.repository.CategoryRepository;
import com.ds360.komp.repository.OrderProductRepository;
import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
@RequestMapping(value = "/admin")
@RequiredArgsConstructor
public class AdminController {
    private final Logger log = LogManager.getLogger(getClass());
    final CategoryRepository categoryRepository;
    final AccountService accountService;
    final OrderProductRepository orderProductRepository;
    final ProductService productService;

    @GetMapping
    public String index() {
        return "admin/index";
    }

    @GetMapping("/orderList")
    @Transactional
    public ModelAndView orderList() {
        return new ModelAndView("admin/orderList","orderProductList",orderProductRepository.findAll());
    }

    @GetMapping("/productList")
    @Transactional
    public ModelAndView productList() {
        return new ModelAndView("admin/productList","productList",productService.listAll());
    }

    @GetMapping("/productCreate")
    @Transactional
    public ModelAndView productCreate() {
        return new ModelAndView("admin/productCreate","product",new Product());
    }

    @PostMapping("/productCreate")
    @Transactional
    public String productCreate(@ModelAttribute Product product) {
        product.setWarehouseProducts(null);
        product.setOrderProductList(null);

        Optional<Category> category = categoryRepository.findById(product.getCategory().getCategoryId());
        category.ifPresent(product::setCategory);

        productService.save(product);

        log.debug("Produkt stworzony: " + product.getSku());
        return "admin/index";
    }
    @GetMapping("/productDelete/{id}")
    @Transactional
    public ModelAndView productDelete(@PathVariable String id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if ((session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true")&&productService.get(Long.valueOf(id)).getOrderProductList().isEmpty()) {
            productService.delete(Long.valueOf(id));
        }
        return new ModelAndView("redirect:/admin/productList");
    }

    @GetMapping("/productEdit/{id}")
    @Transactional
    public ModelAndView productEdit(@PathVariable String id) {
        return new ModelAndView("admin/productEdit","product",productService.get(Long.valueOf(id)));
    }

    @PostMapping("/productEdit")
    @Transactional
    public ModelAndView productEdit(@ModelAttribute Product product) {
        Product oldProduct = productService.get(product.getProductId());
        product.setWarehouseProducts(null);
        product.setOrderProductList(oldProduct.getOrderProductList());

        Optional<Category> category = categoryRepository.findById(product.getCategory().getCategoryId());
        category.ifPresent(product::setCategory);

        productService.save(product);
        log.debug("Produkt zedytowany: " + product.getSku());
        return productList();
    }

    @GetMapping("/accountList")
    @Transactional
    public ModelAndView accountList() {
        return new ModelAndView("admin/accountList","accountList",accountService.listAll());
    }

    @GetMapping("/accountCreate")
    @Transactional
    public ModelAndView accountCreate() {
        return new ModelAndView("admin/accountCreate","account",new Account());
    }

    @PostMapping("/accountCreate")
    @Transactional
    public String accountCreate(@ModelAttribute Account account) {
        account.setPlacedOrders(null);
        accountService.save(account);
        log.debug("Konto stworzone: " + account.getLogin());
        return "admin/index";
    }


}

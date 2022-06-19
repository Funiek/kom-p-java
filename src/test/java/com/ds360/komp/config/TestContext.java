package com.ds360.komp.config;

import com.ds360.komp.service.AccountService;
import com.ds360.komp.service.ProductService;
import org.mockito.Mockito;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TestContext {
    @Bean
    public AccountService accountService() {
        return Mockito.mock(AccountService.class);
    }

    @Bean
    public ProductService productService() {
        return Mockito.mock(ProductService.class);
    }
}

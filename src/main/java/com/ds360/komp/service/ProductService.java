package com.ds360.komp.service;

import com.ds360.config.JpaConfig;
import com.ds360.komp.model.Product;
import com.ds360.komp.repository.ProductRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class ProductService {

    final
    ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void save(Product product) {
        productRepository.save(product);
    }

    public List<Product> listAll() {
        return (List<Product>) productRepository.findAll();
    }

    public Product get(Long id) {
        return productRepository.findById(id).get();
    }

    public void delete(Long id) {
        productRepository.deleteById(id);
    }

    public List<Product> list(int count) {
        return productRepository.findAllProducts();
    }

    public List<Product> listByCategory(Long id) {
        return productRepository.findAllByCategory(id);
    }

}
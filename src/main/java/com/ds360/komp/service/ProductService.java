package com.ds360.komp.service;

import com.ds360.komp.model.Product;
import com.ds360.komp.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    final ProductRepository productRepository;

    public void save(Product product) {
        productRepository.save(product);
    }

    public List<Product> listAll() {
        return productRepository.findAll();
    }

    public Product get(Long id) {
        return productRepository.findById(id).get();
    }

    public void delete(Long id) {
        productRepository.deleteByProductId(id);
    }

    public List<Product> list(Long count) {
        return productRepository.findRowsLimit(count);
    }

    public List<Product> listByCategory(Long id) {
        return productRepository.findAllByCategory(id);
    }

    public List<Product> listPromo() {
        return productRepository.findPromo();
    }

}
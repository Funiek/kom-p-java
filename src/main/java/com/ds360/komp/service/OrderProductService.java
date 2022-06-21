package com.ds360.komp.service;

import com.ds360.komp.model.OrderProduct;
import com.ds360.komp.repository.OrderProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class OrderProductService {
    final OrderProductRepository orderProductRepository;

    public List<OrderProduct> findByOrderId(Long orderId) {
        return orderProductRepository.findByOrderOrderId(orderId);
    }
    public List<OrderProduct> listAll() {
        return orderProductRepository.findAll();
    }
}

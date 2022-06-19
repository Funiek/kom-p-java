package com.ds360.komp.service;

import com.ds360.komp.model.Account;
import com.ds360.komp.model.PlacedOrder;
import com.ds360.komp.model.Product;
import com.ds360.komp.repository.PlacedOrderRepository;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class PlacedOrderService {
    final PlacedOrderRepository placedOrderRepository;

    public void save(PlacedOrder placedOrder) {
        placedOrderRepository.save(placedOrder);
    }

    public PlacedOrder get(Long id) {
        return placedOrderRepository.findById(id).get();
    }

    public PlacedOrder findLast() {
        return placedOrderRepository.findLast();
    }

    public List<PlacedOrder> findByAccount(Long account_id) {
        return placedOrderRepository.findByAccount(account_id);
    }
}

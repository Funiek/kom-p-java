package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CartViewModel {
    List<CartProduct> cartProducts;
    List<Product> recommendedProducts;
}

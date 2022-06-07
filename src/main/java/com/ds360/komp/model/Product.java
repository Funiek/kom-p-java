package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@ToString
@Table
@Entity
public class Product {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "product_id")
    private Long productId;
    @Basic
    @Column(name = "title")
    private String title;
    @Basic
    @Column(name = "sku")
    private String sku;
    @Basic
    @Column(name = "price")
    private BigDecimal price;
    @Basic
    @Column(name = "visible")
    private boolean visible;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (productId != product.productId) return false;
        if (visible != product.visible) return false;
        if (title != null ? !title.equals(product.title) : product.title != null) return false;
        if (sku != null ? !sku.equals(product.sku) : product.sku != null) return false;
        if (price != null ? !price.equals(product.price) : product.price != null) return false;

        return true;
    }

}

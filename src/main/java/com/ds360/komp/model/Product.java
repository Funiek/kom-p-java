package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Table
@Entity
public class Product {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "product_id")
    private long productId;
    @Basic
    @Column(name = "price")
    private BigDecimal price;
    @Basic
    @Column(name = "sku")
    private String sku;
    @Basic
    @Column(name = "title")
    private String title;
    @Basic
    @Column(name = "visible")
    private Boolean visible;
    @Basic
    @Column(name = "category_id")
    private Long categoryId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (productId != product.productId) return false;
        if (price != null ? !price.equals(product.price) : product.price != null) return false;
        if (sku != null ? !sku.equals(product.sku) : product.sku != null) return false;
        if (title != null ? !title.equals(product.title) : product.title != null) return false;
        if (visible != null ? !visible.equals(product.visible) : product.visible != null) return false;
        if (categoryId != null ? !categoryId.equals(product.categoryId) : product.categoryId != null) return false;

        return true;
    }

}

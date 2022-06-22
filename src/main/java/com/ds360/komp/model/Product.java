package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString(onlyExplicitlyIncluded = true)
@Table(name = "product")
@Entity
public class Product {
    @ToString.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "product_id", nullable = false)
    private Long productId;
    @ToString.Include
    @Column(name = "price")
    private BigDecimal price;
    @ToString.Include
    @Column(name = "sku")
    private String sku;
    @ToString.Include
    @Column(name = "title")
    private String title;
    @ToString.Include
    @Column(name = "visible")
    private Boolean visible;
    @ToString.Include
    @Column(name = "promo")
    private Boolean promo;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product")
    private List<WarehouseProduct> warehouseProducts = new ArrayList<>();

    @OneToMany(mappedBy = "product")
    private List<OrderProduct> orderProductList = new ArrayList<>();

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
        if (category != null ? !category.equals(product.category) : product.category != null) return false;

        return true;
    }

}

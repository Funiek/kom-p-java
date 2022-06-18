package com.ds360.komp.model;

import lombok.*;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

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
    private Long productId;
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
    @Column(name = "promo")
    private Boolean promo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    @ToString.Exclude
    private Category category;

    @OneToMany(mappedBy = "product")
    @ToString.Exclude
    private List<WarehouseProduct> warehouseProducts = new ArrayList<>();

    @OneToMany(mappedBy = "product")
    @ToString.Exclude
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

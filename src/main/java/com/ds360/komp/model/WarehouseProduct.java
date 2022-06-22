package com.ds360.komp.model;

import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "warehouse_product", schema = "public")
@IdClass(WarehouseProductKey.class)
public class WarehouseProduct {
    
    @Id
    @ManyToOne
    @JoinColumn(name = "warehouse_id")
    private Warehouse warehouse;

    @Id
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @Basic
    @Column(name = "qty")
    private short qty;

}

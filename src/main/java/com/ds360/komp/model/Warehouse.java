package com.ds360.komp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@ToString
@Entity
@Table
public class Warehouse {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "warehouse_id")
    private Long warehouseId;
    @Basic
    @Column(name = "title")
    private String title;
    @Basic
    @Column(name = "address")
    private String address;

    @OneToMany(mappedBy = "warehouse")
    private List<WarehouseProduct> warehouseProducts = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Warehouse warehouse = (Warehouse) o;

        if (warehouseId != warehouse.warehouseId) return false;
        if (title != null ? !title.equals(warehouse.title) : warehouse.title != null) return false;
        if (address != null ? !address.equals(warehouse.address) : warehouse.address != null) return false;

        return true;
    }

}

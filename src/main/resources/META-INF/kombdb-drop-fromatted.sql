ALTER TABLE placed_order DROP CONSTRAINT placed_order_account_fk;
ALTER TABLE product DROP CONSTRAINT product_category_fk;
ALTER TABLE order_product DROP CONSTRAINT order_product_placed_order_fk;
ALTER TABLE order_product DROP CONSTRAINT order_product_product_fk;
ALTER TABLE warehouse_product DROP CONSTRAINT warehouse_product_warehouse_fk;
ALTER TABLE warehouse_product DROP CONSTRAINT warehouse_product_product_fk;


DROP TABLE account;
DROP TABLE category;
DROP TABLE placed_order;
DROP TABLE product;
DROP TABLE warehouse;
DROP TABLE order_product;
DROP TABLE warehouse_product;
CREATE TABLE account(
    account_id SERIAL PRIMARY KEY,
    login VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    phone VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    role VARCHAR NOT NULL
);

CREATE TABLE category(
    category_id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL
);

CREATE TABLE placed_order(
    order_id SERIAL PRIMARY KEY,
    account_id int NULL REFERENCES account (account_id),
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    delivery VARCHAR NOT NULL,
    payment VARCHAR NOT NULL,
    amount NUMERIC(10,2) NOT NULL
);

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    category_id int NULL REFERENCES category (category_id),
    price NUMERIC(10,2) NOT NULL,
    sku VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    visible BOOLEAN NOT NULL,
    promo BOOLEAN NOT NULL
);

CREATE TABLE warehouse(
    warehouse_id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    address VARCHAR NOT NULL
);

CREATE TABLE order_product(
    order_id INT REFERENCES placed_order (order_id),
    product_id INT REFERENCES product (product_id),
    qty SMALLINT NOT NULL,
    CONSTRAINT order_product_pk PRIMARY KEY (order_id, product_id)
);

CREATE TABLE warehouse_product(
    warehouse_id INT REFERENCES warehouse (warehouse_id),
    product_id INT REFERENCES product (product_id),
    qty SMALLINT NOT NULL,
    CONSTRAINT warehouse_product_pk PRIMARY KEY (warehouse_id, product_id)
);

INSERT INTO category (title) VALUES ('Procesory');
INSERT INTO category (title) VALUES ('Karty Graficzne');
INSERT INTO category (title) VALUES ('Płyty główne');
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,399.99,'AMD-R5-1600','AMD Ryzen 3 1600',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,1299.99,'AMD-R7-3700X','AMD Ryzen 7 3700X',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,2199.99,'AMD-R9-5950X','AMD Ryzen 9 5950X',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (2,1499.99,'GB-GTX-1660-TI','Gigabyte GTX 1660 Ti',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (2,2199.99,'GB-RTX-3060','Gigabyte RTX 3060',true,true);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (2,3499.99,'GB-RTX-3060-TI','Gigabyte RTX 3060 Ti',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (2,1299.99,'GB-RX-6500XT','Gigabyte RX 6500XT',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (3,1199.99,'GB-Z590-AORUS-ULTRA','Gigabyte Aorus Z590 Ultra',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (2,2199.99,'MSI-RX-6700XT','MSI RX 6700XT',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,259.99,'INTEL-C2-Q6600','Intel Dual Quad Q6600',true,true);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,899.99,'INTEL-I5-10600K','Intel I5 10600K',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,699.99,'INTEL-I5-12400F','Intel I5 12400F',true,false);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,1299.99,'INTEL-I7-10700K','Intel I7 10700K',true,true);
INSERT INTO product (category_id,price,sku,title,visible,promo) VALUES (1,1499.99,'INTEL-I7-12700K','Intel I7 12700K',true,false);

INSERT INTO account (login,password,phone,email,address,role) VALUES ('admin','admin','123456789','admin@komp.pl','Towarowa 2','Administrator');
INSERT INTO account (login,password,phone,email,address,role) VALUES ('pracownik','pracownik','123456789','pracownik@komp.pl','Towarowa 2','Moderator');
INSERT INTO account (login,password,phone,email,address,role) VALUES ('jan','kowalski','987123456','jan@onet.pl','Warszawska 32','Uzytkownik');

INSERT INTO warehouse (title,address) VALUES ('Magazyn zasobow','Towarowa 3A');
INSERT INTO warehouse (title,address) VALUES ('Magazyn wyrobow gotowych','Towarowa 3B');
INSERT INTO warehouse (title,address) VALUES ('Magazyn stary','Bolszewicka 53');
INSERT INTO warehouse (title,address) VALUES ('Magazyn surowcow','Aleksanderska 2');


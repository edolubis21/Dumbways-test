create database ka2;
use ka2;

CREATE TABLE  tb_costumer (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(25) DEFAULT NULL,
  email varchar(25) DEFAULT NULL,
  city varchar(25) DEFAULT NULL,
  state varchar(25) DEFAULT NULL,
  zip_code varchar(25) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE  tb_order (
  id int(11) NOT NULL AUTO_INCREMENT,
   id_costumer int(11) DEFAULT NULL,
  order_palced_date DATE DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_costumer) REFERENCES tb_costumer(id)
  );

--Tampilkan hasil query 
INSERT INTO  tb_costumer (name,email,city,state,zip_code) VALUES ('Nama','email','kota','provinsi','kode pos');

INSERT INTO  tb_order (id_costumer,order_palced_date) VALUES ('id_pembeli','dd-mm-yyyy');

select tb_order.*,tb_costumer.email from tb_order LEFT JOIN tb_costumer order by (count(tb_order.id_costumer))
WHERE order_palced_date > "01-01-2019" AND order_palced_date < "01-12-2019"
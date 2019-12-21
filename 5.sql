create database count;
use count;

CREATE TABLE tb_partai (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(25) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tb_caleg (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(25) DEFAULT NULL,
  
  id_partai int(11) DEFAULT NULL,
  earn_vote varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

--Tampilkan hasil query 
INSERT INTO tb_partai (name) VALUES ('Cilacap Santai');
INSERT INTO tb_partai (name) VALUES ('Cilacap Sejahtera');

INSERT INTO tb_caleg (name,id_partai,earn_vote) VALUES ('Sera','2','100');
INSERT INTO tb_caleg (name,id_partai,earn_vote) VALUES ('Dobleh','1','99');



--tampilkan isi dari masing-masing tabel
select * from tb_caleg;

select tb_caleg.id_partai as id  , tb_partai.name as name from tb_caleg
inner join tb_partai on tb_caleg.id_partai=tb_partai.id;

--Tambahkan Cilacap Aman 
INSERT INTO tb_partai (name) VALUES ('Cilacap Aman');
select * from tb_caleg;

--Merubah Cilacap Sejahtera menjadi Cilacap Makmur 
UPDATE tb_partai SET name ='Cilacap Makmur'
WHERE id ='2';
select * from tb_partai;

--Tambahkan 2 Nama Caleg kabur dan astina partai cilacap aman
INSERT INTO tb_caleg (name,id_partai,earn_vote) VALUES ('Kabur','3','69');
INSERT INTO tb_caleg (name,id_partai,earn_vote) VALUES ('Astina','3','21');
select * from tb_caleg;


--Merubah Cilacap Sejahtera menjadi Cilacap Makmur 
UPDATE tb_caleg SET name ='Is Bos'
WHERE id_partai ='2';
UPDATE tb_caleg SET earn_vote ='70'
WHERE id_partai ='2';
select * from tb_caleg;

--Menghapus caleg Astina 
DELETE FROM tb_caleg WHERE name = 'Astina';
select * from tb_caleg;


--tampilkan isi dari masing-masing tabel


SELECT * FROM tb_partai INNER JOIN tb_caleg 
ON tb_partai.id=tb_caleg .id_partai;

--tampilkan nama caleg kabur beserta partai pengusungnya

SELECT name,id_partai FROM tb_caleg WHERE earn_vote='69';

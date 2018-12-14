
SET NAMES UTF8;
DROP DATABASE IF EXISTS HomeMarket;
CREATE DATABASE HomeMarket CHARSET=UTF8;
USE HomeMarket;

CREATE TABLE indexs(
  id INT PRIMARY KEY AUTO_INCREMENT,
  urls VARCHAR(255)
);
INSERT INTO indexs VALUES(null,'http://localhost:3000/images/ads1.png');
INSERT INTO indexs VALUES(null,'http://localhost:3000/images/ads2.png');
INSERT INTO indexs VALUES(null,'http://localhost:3000/images/ads3.png');


CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255),
  phone VARCHAR(11),
  upwd VARCHAR(255)
);
INSERT INTO user VALUES(null,'2278203596@163.com','17737712793','123456');
INSERT INTO user VALUES(null,'9654852364@163.com','16487979797','123456');
INSERT INTO user VALUES(null,'3589754322@163.com','13164646464','123456');
INSERT INTO user VALUES(null,'1122336655@163.com','15979797979','123456');
INSERT INTO user VALUES(null,'7788996655@163.com','13696969696','123456');

CREATE TABLE shopInfo(
  id INT PRIMARY KEY AUTO_INCREMENT,
  mid INT,
  listimg VARCHAR(255),
  title VARCHAR(255),
  price INT,
  oldprice INT
);
INSERT INTO shopInfo VALUES(null,1,'http://localhost:3000/images/shopListImg/demo1_product1_208x208.jpg','commodity1',35,85);
INSERT INTO shopInfo VALUES(null,2,'http://localhost:3000/images/shopListImg/demo1_product2_208x208.jpg','commodity2',95,135);
INSERT INTO shopInfo VALUES(null,3,'http://localhost:3000/images/shopListImg/demo1_product3_208x208.jpg','commodity3',139,325);
INSERT INTO shopInfo VALUES(null,4,'http://localhost:3000/images/shopListImg/demo1_product4_208x208.jpg','commodity4',45,95);
INSERT INTO shopInfo VALUES(null,5,'http://localhost:3000/images/shopListImg/demo1_product5_208x208.jpg','commodity5',82,135);
INSERT INTO shopInfo VALUES(null,6,'http://localhost:3000/images/shopListImg/demo1_product6_208x208.jpg','commodity6',421,235);
INSERT INTO shopInfo VALUES(null,7,'http://localhost:3000/images/shopListImg/demo1_product7_208x208.jpg','commodity7',137,235);
INSERT INTO shopInfo VALUES(null,8,'http://localhost:3000/images/shopListImg/demo1_product8_208x208.jpg','commodity8',286,335);
INSERT INTO shopInfo VALUES(null,9,'http://localhost:3000/images/shopListImg/demo1_product9_208x208.jpg','commodity9',437,535);
INSERT INTO shopInfo VALUES(null,10,'http://localhost:3000/images/shopListImg/demo1_product10_208x208.jpg','commodity10','214','535');
INSERT INTO shopInfo VALUES(null,11,'http://localhost:3000/images/shopListImg/demo1_product11_208x208.jpg','commodity11',92,235);
INSERT INTO shopInfo VALUES(null,12,'http://localhost:3000/images/shopListImg/demo1_product12_208x208.jpg','commodity12',467,735);
INSERT INTO shopInfo VALUES(null,13,'http://localhost:3000/images/shopListImg/demo1_product13_208x208.jpg','commodity13',83,135);
INSERT INTO shopInfo VALUES(null,14,'http://localhost:3000/images/shopListImg/demo1_product14_208x208.jpg','commodity14',55,535);
INSERT INTO shopInfo VALUES(null,15,'http://localhost:3000/images/shopListImg/demo1_product15_208x208.jpg','commodity15',68,135);
INSERT INTO shopInfo VALUES(null,16,'http://localhost:3000/images/shopListImg/demo1_product16_208x208.jpg','commodity16',12,35);
INSERT INTO shopInfo VALUES(null,17,'http://localhost:3000/images/shopListImg/demo1_product17_208x208.jpg','commodity17',248,335);
INSERT INTO shopInfo VALUES(null,18,'http://localhost:3000/images/shopListImg/demo1_product18_208x208.jpg','commodity18',378,435);
INSERT INTO shopInfo VALUES(null,19,'http://localhost:3000/images/shopListImg/demo1_product19_208x208.jpg','commodity19',90,135);
INSERT INTO shopInfo VALUES(null,20,'http://localhost:3000/images/shopListImg/demo1_product20_208x208.jpg','commodity20',100,135);



CREATE TABLE cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  mid INT,
  cartimg VARCHAR(255),
  title VARCHAR(255),
  price INT,
  num INT,
  total INT
);



#多表链接查询
select c.cardImg,c.uname,c.timer,c.title,t.info from cards c inner join texts t on c.mid = t.mid where c.mid = 2 
FROM t_shop t INNER JOIN t_shop_photo p
ON t.id = p.tid
WHERE t.tid = ?




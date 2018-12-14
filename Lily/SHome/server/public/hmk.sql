SET NAMES UTF8;
DROP DATABASE IF EXISTS hmk;
CREATE DATABASE hmk CHARSET=UTF8;
USE hmk;


#首页图片
CREATE TABLE hmk_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128)
);
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/home2_topbanner_img1.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/home2_topbanner_img2.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/home2_topbanner_img3.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/demo2_coll1.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/demo2_coll2.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/demo2_coll3.jpg');
INSERT INTO hmk_index_carousel VALUES  (NULL,'http://127.0.0.1:3000/images/demo2_coll4.jpg');


#首页商品
CREATE TABLE hmk_index_product(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128),
    title VARCHAR(64),
    price VARCHAR(32)
);

INSERT INTO hmk_index_product VALUES
(NULL, 'http://127.0.0.1:3000/images/demo1_product1_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product2_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product3_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product4_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product5_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product6_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product7_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product8_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product9_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product10_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product11_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product12_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product13_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product14_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'images/demo1_product15_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product16_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product17_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product18_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product19_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product20_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product1_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product2_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product3_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product4_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product5_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product6_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product7_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product8_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product9_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product10_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product11_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product12_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product13_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product14_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product15_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product16_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product17_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product18_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product19_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product20_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product1_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product2_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product3_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product4_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product5_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product6_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product7_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product8_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product9_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product10_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product11_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product12_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product13_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product14_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product15_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product16_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product17_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product18_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product19_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product20_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product1_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product2_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product3_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product4_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product5_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product6_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product7_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product8_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product9_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product10_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product11_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product12_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product13_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product14_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product15_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product16_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product17_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product18_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product19_208x208.jpg','Demo Product Sample','$19.99'),
(NULL, 'http://127.0.0.1:3000/images/demo1_product20_208x208.jpg','Demo Product Sample','$19.99');

#用户信息
CREATE TABLE hmk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  upwd VARCHAR(32),
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

INSERT INTO hmk_user VALUES
(NULL, 'dingding','ding@qq.com', '13501234567','123456',  null, null),
(NULL, 'dangdang','dang@qq.com', '13501234568','123456', null, null),
(NULL, 'doudou','dou@qq.com', '13501234569', '123456',null, null),
(NULL, 'yaya','ya@qq.com', '13501234560', '123456',null, null);

#商品详情
CREATE TABLE product_details(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11),
    ttle VARCHAR(128),      #主标题
    subtitle VARCHAR(128),   #副标题
    spec VARCHAR(1024),   #产品详细说明
    price int(32),    #价格
    mid int(11)
);

INSERT INTO product_details VALUES(null,'1', 'ODEMO PRODUCT SAMPLE','QUICK VIEW','OQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,1);
INSERT INTO product_details VALUES(null,'1', 'ODEMO PRODUCT SAMPLE','QUICK VIEW','OQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,2);
INSERT INTO product_details VALUES(null,'1', 'ODEMO PRODUCT SAMPLE','QUICK VIEW','OQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,3);
INSERT INTO product_details VALUES(null,'1', 'ODEMO PRODUCT SAMPLE','QUICK VIEW','OSQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,4);
INSERT INTO product_details VALUES(null,'2', 'SDEMO PRODUCT SAMPLE','QUICK VIEW','SQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,5);
INSERT INTO product_details VALUES(null,'2', 'SDEMO PRODUCT SAMPLE','QUICK VIEW','SQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,6);
INSERT INTO product_details VALUES(null,'2', 'SDEMO PRODUCT SAMPLE','QUICK VIEW','SQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,7);
INSERT INTO product_details VALUES(null,'2', 'SDEMO PRODUCT SAMPLE','QUICK VIEW','SQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,8);
INSERT INTO product_details VALUES(null,'3', 'EDEMO PRODUCT SAMPLE','QUICK VIEW','EQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,9);
INSERT INTO product_details VALUES(null,'3', 'EDEMO PRODUCT SAMPLE','QUICK VIEW','EQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,10);
INSERT INTO product_details VALUES(null,'3', 'EDEMO PRODUCT SAMPLE','QUICK VIEW','EQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,11);
INSERT INTO product_details VALUES(null,'3', 'EDEMO PRODUCT SAMPLE','QUICK VIEW','EQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,12);
INSERT INTO product_details VALUES(null,'4', 'DDEMO PRODUCT SAMPLE','QUICK VIEW','DQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,13);
INSERT INTO product_details VALUES(null,'4', 'DDEMO PRODUCT SAMPLE','QUICK VIEW','DQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,14);
INSERT INTO product_details VALUES(null,'4', 'DDEMO PRODUCT SAMPLE','QUICK VIEW','DQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,15);
INSERT INTO product_details VALUES(null,'4', 'DDEMO PRODUCT SAMPLE','QUICK VIEW','DQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,16);
INSERT INTO product_details VALUES(null,'5', 'VDEMO PRODUCT SAMPLE','QUICK VIEW','VQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,17);
INSERT INTO product_details VALUES(null,'5', 'VDEMO PRODUCT SAMPLE','QUICK VIEW','VQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,18);
INSERT INTO product_details VALUES(null,'5.', 'VDEMO PRODUCT SAMPLE','QUICK VIEW','VQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,19);
INSERT INTO product_details VALUES(null,'5', 'VDEMO PRODUCT SAMPLE','QUICK VIEW','VQuisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor...Vendor: Loremous',89,20);


#商品详情图片
CREATE TABLE hmk_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id int(11) default NULL,
  sm varchar(128) default NULL,
  md varchar(128) default NULL,
  lg varchar(128) default NULL
);
INSERT INTO hmk_product_pic VALUES(null,'1','http://127.0.0.1:3000/images/demo1_product1_208x208.jpg','images/demo1_800x800.jpg','images/demo1_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'1','http://127.0.0.1:3000/images/demo1_product2_208x208.jpg','images/demo2_800x800.jpg','images/demo2_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'1','http://127.0.0.1:3000/images/demo1_product3_208x208.jpg','images/demo3_800x800.jpg','images/demo3_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'1','http://127.0.0.1:3000/images/demo1_product4_208x208.jpg','images/demo4_800x800.jpg','images/demo4_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'1','http://127.0.0.1:3000/images/demo1_product5_208x208.jpg','images/demo5_800x800.jpg','images/demo5_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'2','http://127.0.0.1:3000/images/demo1_product6_208x208.jpg','images/demo6_800x800.jpg','images/demo6_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'2','http://127.0.0.1:3000/images/demo1_product7_208x208.jpg','images/demo7_800x800.jpg','images/demo7_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'2','http://127.0.0.1:3000/images/demo1_product8_208x208.jpg','images/demo8_800x800.jpg','images/demo8_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'2','http://127.0.0.1:3000/images/demo1_product9_208x208.jpg','images/demo9_800x800.jpg','images/demo9_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'2','http://127.0.0.1:3000/images/demo1_product10_208x208.jpg','images/demo10_800x800.jpg','images/demo10_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'3','http://127.0.0.1:3000/images/demo1_product11_208x208.jpg','images/demo11_800x800.jpg','images/demo11_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'3','http://127.0.0.1:3000/images/demo1_product12_208x208.jpg','images/demo12_800x800.jpg','images/demo12_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'3','http://127.0.0.1:3000/images/demo1_product13_208x208.jpg','images/demo13_800x800.jpg','images/demo13_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'3','http://127.0.0.1:3000/images/demo1_product14_208x208.jpg','images/demo14_800x800.jpg','images/demo14_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'3','http://127.0.0.1:3000/images/demo1_product15_208x208.jpg','images/demo15_800x800.jpg','images/demo15_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'5','http://127.0.0.1:3000/images/demo1_product16_208x208.jpg','images/demo16_800x800.jpg','images/demo16_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'5','http://127.0.0.1:3000/images/demo1_product17_208x208.jpg','images/demo17_800x800.jpg','images/demo17_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'5','http://127.0.0.1:3000/images/demo1_product18_208x208.jpg','images/demo18_800x800.jpg','images/demo18_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'5','http://127.0.0.1:3000/images/demo1_product19_208x208.jpg','images/demo19_800x800.jpg','images/demo19_800x800.jpg');
INSERT INTO hmk_product_pic VALUES(null,'5','http://127.0.0.1:3000/images/demo1_product20_208x208.jpg','images/demo20_800x800.jpg','images/demo20_800x800.jpg');


#收货地址信息
CREATE TABLE hmk_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);



#购物车条目
CREATE TABLE hmk_shoppingcart_item(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT,  #id
    img VARCHAR(255),
    title VARCHAR(255), #标题
    price INT,      #单价
    count INT,        #购买数量
    total INT(11)   #总价
  );

INSERT INTO hmk_shoppingcart_item VALUES("NULL",1,'','hello',90,2,180);



#用户订单
CREATE TABLE hmk_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
);

#用户订单
CREATE TABLE hmk_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

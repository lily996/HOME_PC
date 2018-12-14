//使用express构建web服务器 --11:25
const express = require('express');
const session = require("express-session");
const bodyParser = require('body-parser');

const cors=require("cors");
/*引入路由模块*/
 const index=require("./routes/index");
 const users=require("./routes/users");
 const products=require("./routes/products");
 const details = require("./routes/details");
 const cart = require("./routes/cart");

 var app = express();

// app.use(cors({
//   origin:'http://localhost:8080',
//   credentials:true
// }))


var app = express();
app.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080'],
  credentials:true
}))
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
//app.use(express.static('/public'));
app.use(express.static(__dirname+"/public"));
app.use(session({
    secret:'随机字符串',
    cookie:{maxAge:60*1000*30},//过期时间ms
    resave:false,
    saveUninitialized:true
  }));//将服务器的session，放在req.session中


 app.use("/index",index);
 app.use("/users",users);
 app.use("/products",products);
 app.use("/details",details);
 app.use("/cart",cart);
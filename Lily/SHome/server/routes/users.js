var express=require("express");
var router=express.Router();
var pool=require("../pool");

router.post("/signin",(req,res)=>{
  var {uname,upwd}=req.body;
  var sql="select * from  hmk_user where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    err&&console.log(err);
    if(result.length>0){
      req.session.uid=result[0].uid;
      res.write(JSON.stringify({ok:1}));
    }else{
      res.write(JSON.stringify({ok:0,msg:"用户名或密码错误!"}));
    }
    res.end();
  })
})
router.post("/islogin",(req,res)=>{
  var uid=req.session.uid
  if(uid==null){
    res.write(JSON.stringify({ok:0}));
    res.end();
  }else{
    var sql="select * from  hmk_user where uid=?";
    pool.query(sql,[uid],(err,result)=>{
      res.write(JSON.stringify({ok:1,uname:result[0].uname}));
      res.end();
    })
  }
})
router.get("/signout",(req,res)=>{
  delete req.session.uid;
  res.send();
})

router.get('/addUser',(req,res)=>{
  var $uname= req.query.uname;
  var $email = req.query.email;
  var $phone = req.query.phone;
  var $upwd = req.query.upwd;
  var sql = "INSERT INTO hmk_user VALUES(null,?,?,?,?,null,null)";
  pool.query(sql,[$uname,$email,$phone,$upwd],(err,result)=>{
    console.log('1');
  if(err) throw err;
  console.log('2');
  res.send({code:1,msg:result});
  })
})

module.exports=router;
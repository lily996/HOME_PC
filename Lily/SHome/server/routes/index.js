const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/getIndexProducts",(req,res)=>{
    var pic = req.query.pic;
    var sql1="SELECT * FROM hmk_index_carousel";
    pool.query(sql1,[],(err,result)=>{
        res.write(JSON.stringify(result));
        res.end();
    })
})


router.get("/getIndex",(req,res)=>{
    var lid = req.query.pic;
    var sql2="SELECT * FROM hmk_index_product";
    pool.query(sql2,[],(err,result)=>{
        res.write(JSON.stringify(result));
        res.end();
    })
})
module.exports=router;
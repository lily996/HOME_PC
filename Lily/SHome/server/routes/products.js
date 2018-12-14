const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/products",(req,res)=>{
    var sql1="SELECT * FROM hmk_index_product";
    pool.query(sql1,[],(err,result)=>{
        res.write(JSON.stringify(result));
        res.end();
    })
})



//分页显示：
router.get("/shoplist",(req,res)=>{
    var pno = req.query.pno;  //参数 当前页码 页大小(一页显示几行)
    var pageSize = req.query.pageSize;
    //查找总记录数->转换总页数   
    var sql = "SELECT count(lid) as c FROM hmk_index_product";
    var obj ={};        //保存要发给客户端的数据
    var progress = 0;    
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        var c = Math.ceil(result[0].c/pageSize);//总记录数/每页的记录数
        obj.pageCount = c;
        progress += 50;
        if(progress==100){
            res.send(obj);
        }
    })
    //查找当前页内容
    var sql = " SELECT lid,pic,title,price";
        sql += " FROM hmk_index_product";
        sql += " LIMIT ?,?";
        var offset = parseInt((pno-1)*pageSize);//计算分页偏移量
        pageSize = parseInt(pageSize);
        pool.query(sql,[offset,pageSize],(err,result)=>{
            if(err)throw err;
           // console.log(result);
            obj.data = result;
            progress+=50;
            if(progress==100){
                res.send(obj);
            }
        })
    //res.send({code:"ok"});
})

//nodejs  发送每页顺序


module.exports=router;
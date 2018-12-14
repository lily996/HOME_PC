const express=require("express")
const router=express.Router()
const pool=require("../pool")


//获取购物车的所有信息
router.get("/cartlist",(req,res)=>{
    var sql = "SELECT * FROM hmk_shoppingcart_item";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send({code:1,msg:result});
    })
})


//添加购物车
router.get('/addCart',(req,res)=>{
    //   { params:{ id:this.id ,cartimg:this.cartimg ,title:this.title,price:this.price:sum:this.sum} }
    var cid = req.query.id;
    console.log('-------------')
    console.log(cid);
    console.log('-------------')
	var cartimg = req.query.cartimg;
	var title = req.query.title;
	var price = req.query.price;
	var sum = req.query.sum;
	var sql = `SELECT cid FROM hmk_shoppingcart_item WHERE cid=?`;
	pool.query(sql,[cid],(err,result)=>{
		if(result.length==0){
			var sql = `INSERT INTO hmk_shoppingcart_item VALUES(null,?,?,?,?,?,?*?)`;
			pool.query(sql,[cid,cartimg,title,price,sum,price,sum],(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result});
			})
		}else{
			var sql = `UPDATE hmk_shoppingcart_item SET count=count+?,total=total+(?*?) WHERE cid=?`;
			pool.query(sql,[sum,sum,price,cid],(err,result)=>{
				if(err) throw err;
				res.send({code:1,msg:result});
			})
		}
	})
})


//删除
router.get('/deleteList',(req,res)=>{
	var mid = req.query.mid;
	var sql = `DELETE FROM cart WHERE mid = ?`;
	pool.query(sql,[mid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:result});
	})
})

module.exports=router;
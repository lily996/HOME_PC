<template>
    <div class="cart">
        <div class="shopimg">
            <div>Home › Collection Page</div>
            <div>COLLECTION PAGE</div>
        </div>
        <div class="container">
            <table>
                <tr style="height:50px;">
                    <td>PRODUCT</td>
                    <td>PRICE</td>
                    <td>QUANTITY</td>
                    <td>TOTAL</td>
                </tr>
                <tr v-for='(item,index) in cartlist' :key='index' >
                    <td class="comInfo">
                        <div class='cartimg'>
                            <img :src="item.img" alt="">
                        </div>
                        <div class="shu">
                            <div>{{item.title}}</div>
                            <div>S / Red</div>
                            <div>Remove</div>
                        </div>
                    <td>${{item.price}}</td>
                    <td>
                        <div id='nb'>
                                <button class="buttonAdd" >-</button><input class='input' type="text"  style="width:40px;" v-model="item.count"><button class="buttonAdd">+</button>
                        </div>
                    </td>
                    <td>${{item.total}}</td>
                </tr>
            </table>
            <div></div>
            <div>
                <div class="left">
                    <div class="one">
                        <div>
                            <span>SPECIAL INSTRUCTIONS FOR SELLER</span><br>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div>
                            <span>Subtotal</span><span>${{allprice}}</span>
                            <div>Shipping & taxes calculated at checkout</div>
                            <div style="width:350px;">
                                <button class="buttonone">UPDATA CART</button><button class="buttontwo">CHECK OUT</button>
                            </div>
                        </div>
                    </div>
                    <div class="two">
                        <span>GET SHIPPING ESTIMATES</span>
                        <div>
                            <span>Country</span>
                            <select class="select-all">
                                <option value="">Lorem ipsum</option>
                                <option value="">dolor sit amet</option>
                                <option value="">nulla recusandae</option>
                                <option value="">Voluptatibus</option>
                                <option value="">consectetur</option>
                                <option value="">Nostrum</option>
                            </select>
                        </div>
                        <div>
                            <span>Country</span>
                            <select class="select-all">
                                <option value="">Lorem ipsum</option>
                                <option value="">dolor sit amet</option>
                                <option value="">nulla recusandae</option>
                                <option value="">Voluptatibus</option>
                                <option value="">consectetur</option>
                                <option value="">Nostrum</option>
                            </select>
                        </div>
                        <div>
                            <span>Country</span>
                            <input type="text" class="input-all">
                        </div>
                    </div>
                    


                </div>
            
            </div>
            <div class="cart_img">
                <img src="images/cartkao.png" alt="">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                cartlist:[],
                allprice:0,
                //count:1
                // cimg:'',
                // ctitle:'',
                // cprice:0,
                // csum:0,
                // ctotal:0
            }
        },
        created(){
            this.getdata();
        },
        methods:{
            getdata(){
                this.axios.get("http://127.0.0.1:3000/cart/cartlist").then(res=>{
                    this.cartlist=res.data.msg;
                    console.log(res.data.msg);
                    var allpricecolan = 0;
                    for(var i=0 ;i<res.data.msg.length;i++){
                        allpricecolan = res.data.msg[i].total + allpricecolan;
                    }

                    this.allprice = allpricecolan;
                });
            },
        }
    }
</script>

<style>
.cartimg>img{
    width:80px;
    height:80px;
}
div.cart>div.shopimg{
    width: 1600px;
    height: 191px;
    background-image: url('../images/breadcrumb.jpg');
}
div.cart>div.shopimg>div{
    color: white;
    text-align: center;
}
div.cart>div.shopimg>div:first-child{
    padding-top: 55px;
    font-size: 15px;
}
div.cart>div.shopimg>div:last-child{
    font-size: 40px
}
div.cart>div.container>.left,.right{
    margin-top: 40px;
   
}

/* table */
table{
    width: 100%;
    height: 484px;
    border: 1px solid #E5E5E5;
    margin-top: 40px
}
table td{
    border: 1px solid #E5E5E5;
}
table tr:first-child>td:first-child{
    width: 459px;   
}
table tr:first-child{
    font-size: 16px;
    font-weight: 700;
    height: 50px;
}
table tr:nth-child(2)>td:first-child{
    width: 227px;
}
table tr:nth-child(3)>td:first-child{
    width: 264px;
}
table tr:nth-child(4)>td:first-child{
    width: 227px;
}
table tr:first-child,tr:first-child~tr>td:first-child~td{
    text-align: center;
    height: 147px;
}
table tr:first-child~tr>td:nth-child(2),tr:first-child~tr>td:nth-child(4){
    font-size: 25px;
    font-weight: 600;
}
#nb{
    width: 90px;
    text-align: center;
    margin: 0 auto;
}

.comInfo>div{
    float: left;
    padding-left: 30px;
}
.shu{
    padding-top: 10px;
}
.shu>div{
    margin-bottom: 5px;
}
.shu>div:first-child~div{
    color: #B5B5B5;
    font-size: 14px;
}

table+div{
    width: 100%;
    border-top: 1px solid #E5E5E5;
    margin-top: 20px;
}
.cart .left>div:nth-child(1){
    padding-top: 20px;
    color: #B5B5B5;
}
.cart .left>div:nth-child(1) textarea{
    border: 1px solid #E5E5E5;
    margin-top: 20px;
    margin-bottom: 20px;
    width: 781px;
    height: 100px;
}
.cart .left .two>span:first-child{
    margin-top: 20px;
    font-size: 25px;
    font-weight: 600;
}
.select-all,.input-all{
    margin-top: 10px;
    margin-left: 100px;
}
/*.left img{
    margin-top: 20px;
}*/
.cart .left .one{
    display: flex;
    justify-content: space-between;
}
.cart .left .one>div:nth-child(2)>span:nth-child(2){
    color: #FA5555;
    font-size: 25px;
    font-weight: 700;
    margin-left: 20px;
}
.cart .left .one>div:nth-child(2)>div:nth-child(2){
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
.cart .left .two{
    width:1020px;
    height:450px;
    text-align:left;
}
.buttonone,.buttontwo{
    width: 135px;
    height: 37px;
    line-height: 37px;
    text-align: center;
    border: 0;
    font-weight: 600;
    margin-top: 10px;
    
}
.buttonone{
    background-color: #FA5555;
    color: white;
}
button.buttonone:hover{
    background-color: #B5B5B5;
    color: #696969;
}
.buttontwo{
    background-color: #B5B5B5;
    color: #696969;
    margin-left: 10px;
}
button.buttontwo:hover{
    background-color: #FA5555;
    color: white;
}
.cart_img{
    width:100%;
    height:150px;
    position:relative;
}
.cart_img img{
    position:absolute;
    top:0px;
    left:0px;
}
/*pu.css */

.input-all{
    border: 0;
    border: 1px solid #B5B5B5;
    height: 40px;
    width: 320px;
}
.select-all{
    border: 1px solid #B5B5B5;
    height: 40px;
    width: 320px;
}
.input{
    border: 0;
    border-bottom: 1px solid #B5B5B5;
    border-top: 1px solid #B5B5B5;
    width: 30px;
    height: 35px;
    background-color: white;
    float: left;
    text-align: center;
}

.buttonAdd{
    border: 1px solid #B5B5B5;
    width: 25px;
    height: 35px;
    background-color: white;
    float: left;
    
}
.select{
    height: 40px;
    width: 200px;
    border: 1px solid #E5E5E5;
}
</style>
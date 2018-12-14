<template>
    <div>
         <section class="shopInfo">
        <div class="shopimg">
            <div>Home › Collection Page</div>
            <div>COLLECTION PAGE</div>
        </div>
        <div class="container d-flex justify-content-around">
            <!--放大镜-->
            <div class="left-one">
                <div class="outer" v-cloak>
                    <div class="pic-big">
                        <img class="md-img" :src="img">
                        <div id="mask" class="d-none"></div>
                        <div id="super-mask" ></div>
                        <div id="div-lg" class="d-none"  :style="{'background-image':'url('+img+')','background-size':w+'px ' +h+'px'}"></div>
                        <div>
                            <div class="img-list">
                                <ul class="list-unstyled ">
                                    <li v-for="(item,i) in pics" @mouseenter="chenge(i)">
                                        <img :src="item.sm">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="middle">
                    <ul class="list-unstyled pt-5" >
                        <li style="float:left;"><img src="images/demo1_detail12_135x135.jpg"></li>
                        <li style="float:left;"><img src="images/demo1_detail13_135x135.jpg"></li>
                        <li style="float:left;"><img src="images/demo1_detail19_135x135.jpg"></li>
                    </ul>
                </div>
            </div>
            <div class="right">
                <div class="one">
                    <div class="shopinfo-one">
                        <ul class="list-unstyled">
                            <li>{{products.title}}</li>
                            <li><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></li>
                            <li>{{products.subtitle}}</li>
                            <li>{{products.spec}}</li>
                            <li>Vendor: Loremous</li>
                            <li>Type: Funiture</li>
                        </ul>
                    </div>
                    <div class="shopinfo-two">
                        <div>
                            <div>
                               Size
                            </div>
                            <span class="selectone"> 
                                <select class="select">
                                    <option value = "1">Fuatured</option>
                                    <option value = "2">Saab</option>
                                    <option value = "3">Opel</option>
                                    <option value = "4">Audi</option>
                                </select>
                            </span>
                        </div>
                        <div>
                            <div>
                                Color
                            </div>
                            <span class="selecttwo">
                                <select class="select">
                                <option value = "1">Fuatured</option>
                                <option value = "2">Saab</option>
                                <option value = "3">Opel</option>
                                <option value = "4">Audi</option>
                            </select>
                        </span>
                        </div>
                    </div>
                    <div class="shopinfo-three">
                        <div>$89.00 USD</div>
                        <div class="span">
                            <span>Quantity</span> <button class="buttonAdd" @click="cartSub">-</button><input class='input' type="text" :value="sum" ><button class="buttonAdd"  @click="cartAdd" >+</button>
                        </div>
                    </div>
                    <div class="shopinfo-four">
                        <div><button @click="stopbuy">BUY NOW</button></div>
                        <div><img src="images/love.png" alt=""> Add to Wishlist</div>
                    </div>
                    <div class="shopinfo-five">
                        <img src="images/5ge.png" alt="">
                    </div>
                </div>
                <div class="two">
                    <img src="images/haoa.png" alt="">
                </div>
            </div>
        </div>
        <div class="xia">
            <div class="daohang ">
                    <ul class="nav nav-tabs">
                        <li class="nav-item "><a href="#one" class="nav-link colorB5" data-toggle="tab" actions>DESCRIPTION</a></li>
                        <li class="nav-item"><a href="#two" class="nav-link colorB5" data-toggle="tab">WARRANTY</a></li>
                        <li class="nav-item"><a href="#three" class="nav-link colorB5" data-toggle="tab">DELIVERY</a></li>
                        <li class="nav-item"><a href="#four" class="nav-link colorB5" data-toggle="tab">PAYMENT</a></li>
                    </ul>
                        <!--内容-->
                    <div class="tab-content">
                        <div class="tab-pane" id="one">
                            Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed scelerisque ante. Lorem ipsum dolor sit amet consectetur adipiscing elitos.X
                    </div>
                    <div class="tab-pane" id="two">
                            <div>LIMITED WARRANTIES</div> 
                            <p>Limited Warranties are non-transferable. The following Limited Warranties are given to the original retail purchaser of the following Ashley Furniture Industries, Inc.Products:</p>
                            <p> Frames Used In Upholstered and Leather Products
                                Limited Lifetime Warranty
                                A Limited Lifetime Warranty applies to all frames used in sofas, couches, love seats, upholstered chairs, ottomans, sectionals, and sleepers. Ashley Furniture Industries,Inc. warrants these components to you, the original retail purchaser, to be free from material manufacturing defects.</p>
                    </div>
                    <div class="tab-pane" id="three">
                            <div>Purchasing & Delivery</div> 
                            <p>Before you make your purchase, it’s helpful to know the measurements of the area you plan to place the furniture. You should also measure any doorways and hallways through which the furniture will pass to get to its final destination.</p>
                            Picking up at the store
                            <p>Shopify Shop requires that all products are properly inspected BEFORE you take it home to insure there are no surprises. Our team is happy to open all packages and will assist in the inspection process. We will then reseal packages for safe transport. We encourage all customers to bring furniture pads or blankets to protect the items during transport as well as rope or tie downs. Shopify Shop will not be responsible for damage that occurs after leaving the store or during transit. It is the purchaser’s responsibility to make sure the correct items are picked up and in good condition.
                            Delivery</p>
                            <p>Customers are able to pick the next available delivery day that best fits their schedule. However, to route stops as efficiently as possible, Shopify Shop will provide the time frame. Customers will not be able to choose a time. You will be notified in advance of your scheduled time frame. Please make sure that a responsible adult (18 years or older) will be home at that time. 
                            In preparation for your delivery, please remove existing furniture, pictures, mirrors, accessories, etc. to prevent damages. Also insure that the area where you would like your furniture placed is clear of any old furniture and any other items that may obstruct the passageway of the delivery team. Shopify Shop will deliver, assemble, and set-up your new furniture purchase and remove all packing materials from your home. Our delivery crews are not permitted to move your existing furniture or other household items. Delivery personnel will attempt to deliver the purchased items in a safe and controlled manner but will not attempt to place furniture if they feel it will result in damage to the product or your home. Delivery personnel are unable to remove doors, hoist furniture or carry furniture up more than 3 flights of stairs. An elevator must be available for deliveries to the 4th floor and above.</p>
                    </div>
                    <div class="tab-pane" id="four">
                        <div> Payment Information</div>
                        Dust or wipe clean with a cloth dampened with water once a week. Be sure not to leave water spots on the surface. These water spots will dry and could possibly leave permanent marks.
                        Clean stains/spots using the following steps: Dampen a soft cloth with a mixture of hot water and liquid dishwashing detergent. Wring the cloth as much as possible to remove excess liquid. Rub the surface lightly in a circular motion. Dry the surface immediately with a clean, soft towel.
                    </div>
                </div>
            </div>
            <div class="biaotwo">
                YOU MAY ALSO LIKE
            </div>
            <div class="bottom-list">
                <div class="module">
                    <div><img src="images/demo1_product1_208x208.jpg" alt="demo1_product1_208x208.jpg"></div>
                    <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                    <div>Demo Product Sample</div>
                    <div><span>$19.99</span><span>$24.99</span></div>
                    <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                </div>
                <div class="module">
                    <div><img src="images/demo1_product2_208x208.jpg" alt="demo1_product1_208x208.jpg"></div>
                    <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                    <div>Demo Product Sample</div>
                    <div><span>$19.99</span><span>$24.99</span></div>
                    <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                </div>
                <div class="module">
                        <div><img src="images/demo1_product3_208x208.jpg" alt="demo1_product1_208x208.jpg"></div>
                        <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                        <div>Demo Product Sample</div>
                        <div><span>$19.99</span><span>$24.99</span></div>
                        <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                </div>
                <div class="module">
                    <div><img src="images/demo1_product4_208x208.jpg" alt="demo1_product1_208x208.jpg"></div>
                    <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                    <div>Demo Product Sample</div>
                    <div><span>$19.99</span><span>$24.99</span></div>
                    <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
    </section>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                list:[],
                img:"",
                pics:{},
                products:{},
                t:0,l:0,w:814,h:814,

                //添加购物车信息
                cartlist:[],
                id:'',//商品id
                cartimg:'',//图片
                title:'', //标题
                price:0,//单价
                sum:1
            }
        },
        props:["lid"],
        mounted(){
            // var that = this; 
            this.axios.get(
                "http://127.0.0.1:3000/details/details",
                { params:{ lid:this.lid } }
            ).then(res=>{
                this.list=res.data;
                this.pics = this.list.pics;
                this.img = this.list.pics[0]['lg'];
                this.products = this.list.product;

                //给购物车做准备
                this.cartlist = this.list;
                console.log(this.carlist);
                this.id =  this.list.product.lid;// id
                this.cartimg = this.list.pics[0]['sm']; //购物车图片
                this.title = this.list.product.ttle;//标题
                this.price =  this.list.product.price;// 单价
                                                    //sum
                $(function(){
                    var $mImg=$(".md-img");
                    console.log($mImg);
                    var $mask = $("#mask")
                    var $sMask = $("#super-mask");
                    var $divLg = $("#div-lg");
                    var MSIZE = 200;
                    var    MAX = 417 - MSIZE;  //mImg的大小 - mask的大小
                    $sMask.hover(
                        function(){
                            $mask.toggleClass("d-none");
                            $divLg.toggleClass("d-none");
                        }
                    ).mousemove(function(e){
                        var left = e.offsetX-MSIZE/2;
                        var top = e.offsetY-MSIZE/2;
                        if(left<0) left=0;
                        else if(left>MAX) left=MAX;
                        if(top<0) top=0;
                        else if(top>MAX) top=MAX;
                        $mask.css({left:left,top:top});
                        $divLg.css(
                           "background-position",`-${814/417*left}px -${814/417*top}px`
                        )
                    }) 
                });
            })   
        },
        methods:{
            chenge(i){
                this.img = this.list.pics[i]['sm']
            },
            stopbuy(){
                //  this.axios.post("http://127.0.0.1:9000/users/islogin").then(res=>{
                //     if(res.data.ok==0)
                //         this.$router.push({name:"login"});
                //     else{
                   
                        this.axios.get(
                            "http://127.0.0.1:3000/cart/addCart",
                            { params:{ id:this.id ,cartimg:this.cartimg ,title:this.title, price:this.price, sum:this.sum} }
                        ).then(res=>{
                            // alert('添加成功！');
                            this.$router.push({name:'cart'});
                        })  
                        
                //     }
                // })
            },
            cartSub(){
               if(this.sum<2)
               return;
               this.sum--;
            },
            cartAdd(){
                this.sum++;
            }
        }
    }
</script>

<style>
    section>div.shopimg{
    width: 100%;
    height: 191px;
    background-image: url('../images/breadcrumb.jpg');

}
section>div.shopimg>div{
    color: white;
    text-align: center;
    
}
section>div.shopimg>div:first-child{
    padding-top: 55px;
    font-size: 15px;
}
section>div.shopimg>div:last-child{
    font-size: 40px
}
section>div.container>.left,.right{
    margin-top: 40px;
   
}

section>.container .left-one{
    width: 500px;
    height: 530px;
    padding-top:10px;
}
/*放大镜 */
section>.container>.left-one>div.outer{
    height:520px;
    width: 420px;
    border:3px solid #000;
    border:2px solid #aaa;
    box-shadow:5px 5px 6px #000;
}
section>.container>.left-one .pic-big{
    position:absolute;
}
section>.container>.left-one .pic-big img.md-img{
    width:417px;
    height:417px;
}
section>.container>.left-one .pic-big #mask{
    position:absolute;
    top:0;
    left:0;
    width:200px;
    height:200px;
    background-color:#ffa;
    opacity:.5;
}
section>.container>.left-one .pic-big #super-mask{
    position:absolute;
    top:0;
    width:417px;
    height:417px;
}
section>.container>.left-one .pic-big #div-lg{
    position:absolute;
    top:0;
    left:424px;
    width:400px;
    height:400px;
    z-index:1000;
    border:2px solid rgba(0,0,0,0.125);
    background-repeat:no-repeat;
    background-color:#fff;
}
section>.container>.left-one .pic-big #div-lg img{
    position:absolute;
    top:0;
    left:0;
}
section>.container>.left-one>.outer>.pic-big>div>.img-list{
    width:400px;
   /* overflow:hidden;*/
}
section>.container>.left-one>.outer>.pic-big>div>.img-list>ul>li{
    float:left;
    width:80px;
    height:80px;
    padding-top:7px;
    padding-left:3px;
}
section>.container>.left-one>.outer>.pic-big>div>.img-list>ul{
    width:400px;
    height:100px;
}

section>.container>.left-one>.outer>.pic-big>div>.img-list>ul>li>img{
    width: 80px;
    height: 80px;
    border:1px solid #bcbcbc;
    margin-left:6px;
    padding:2px;
    transition: all 0.4s ease 0s;
    -webkit-transition: all 0.4s ease 0s;
    -moz-transition: all 0.4s ease 0s;
    -o-transition: all 0.4s ease 0s;
}
section>.container>.left-one>.outer>.pic-big>div>.img-list>ul>li:hover>img{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
}
section>.container>.left-one>.middle>ul>li>img{
    transition: all 0.4s ease 0s;
    -webkit-transition: all 0.4s ease 0s;
    -moz-transition: all 0.4s ease 0s;
    -o-transition: all 0.4s ease 0s;
}
section>.container>.left-one>.middle>ul>li:hover>img{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
}
section>.container>.right{
    width: 590px;
    height: 737px;
}

section>.container>.right>.one>.shopinfo-one>ul>li:first-child{
    font-size: 30px;
    font-weight: 600;
}
section>.container>.right>.one>.shopinfo-one>ul>li:nth-child(4){
    width: 344px;
}
section>.container>.right>.one>.shopinfo-one>ul>li:nth-child(5){
    padding-top: 10px;
}
section>.container>.right>.one>.shopinfo-one>ul>li:nth-child(6){
    padding-top: 10px;
    color: #FA5555;
}
section>.container>.right>.one>.shopinfo-two{
    padding: 10px 0;
    width: 344px;
    border-top:1px solid #B5B5B5; 
    border-bottom:1px solid #B5B5B5; 
}
section>.container>.right>.one>.shopinfo-two>div>div{
    display: inline;
}
section>.container>.right>.one>.shopinfo-two>div:first-child{
    margin-bottom: 15px;
}
section>.container>.right>.one>.shopinfo-two .selectone{
  margin-left: 17px;
}
section>.container>.right>.one>.shopinfo-two .selecttwo{

}
section>.container>.right>.one>.shopinfo-two>div>div{
    font-size: 25px;
    font-weight: 600;
    color: #696969;
    padding-right: 20px;
}

section>.container>.right>.one>.shopinfo-three{
    margin-top: 20px;
    width:400px;
    height:100px;
    
}
section>.container>.right>.one>.shopinfo-three>div:first-child{
    font-size: 30px;
    margin-bottom: 18px;
}
section>.container>.right>.one>.shopinfo-three>div:nth-child(2)>span{
    color: #B5B5B5;
    float: left;
}
section>.container>.right>.one>.shopinfo-four>div:first-child>button{
    width: 220px;
    height: 48px;
    background-color: #EC1F1F;
    color:white;
    text-align: center;
    line-height: 48px;
    font-size: 25px;
    font-weight: 600;
    border: 0;
    margin-top: 40px;
    transition: all 0.5s ease;
}
section>.container>.right>.one>.shopinfo-four>div:first-child>button:hover{
    color: #696969;
    background-color: #B5B5B5;
}
section>.container>.right>.one>.shopinfo-four>div:nth-child(2){
    margin-top: 17px;
    border-bottom: 1px solid #B5B5B5;
    width: 344px;
    padding-bottom: 17px;
    margin-bottom: 20px;
}
section>div.container>.right{
    display: flex;
    justify-content: space-between;
}

section>.container>.right>.one>.shopinfo-five{

}
section .daohang{
    width: 1180px;
    margin: 0 auto;
    margin-top: 50px;
}
section .daohang li:hover{
    border-top: 2px solid #74b6c7;
  
}
section .daohang li>a:hover{
    color: #74b6c7;
}
section .daohang li{
    transition: all 0.1s ease;
}
section .daohang>div>div>div:first-child{
    font-size: 30px;
    font-weight: 600;
    margin-bottom: 20px;
}
section .daohang>div>div{
    border-bottom: 1px solid #E5E5E5;
    border-left: 1px solid #E5E5E5;
    border-right: 1px solid #E5E5E5;
    padding: 20px;
}
section .xia .biaotwo{
    width: 1180px;
    height: 50px;
    border: 1px solid #E5E5E5;
    font-size: 30px;
    font-weight: 600;
    line-height: 50px;
    margin-top: 50px;
    margin: 50px auto 0 auto;
    padding-left: 20px
}
section .xia .bottom-list{
    width: 1180px;
    margin: 50px auto 0 auto;
    display: flex;
    justify-content: space-between;

}
section .xia .bottom-list .module{
    width: 224px;
    height: 364px;
    float: left;
 }
 
 section .xia .bottom-list .module>div:first-child>img:first-child{
     width: 280px;
     height: 280px;
     transition: all 0.4s ease 0s;
     -webki-transition: all 0.4s ease 0s;
     -moz-transition: all 0.4s ease 0s;
     -o-transition: all 0.4s ease 0s;
 }
section .xia .bottom-list .module>div:first-child:hover>img{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
}
 section .xia .bottom-list .module>div:nth-child(3){
     font-weight: bold;
     font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
 }
 section .xia .bottom-list .module>div:nth-child(3):hover{
     color: #74b6c7;
 }
 
 section .xia .bottom-list .module>div:nth-child(4)>span:first-child{
     color: #74b6c7;
     font-weight:600;
 }
 section .xia .bottom-list .module>div:nth-child(4)>span:last-child{
     color: #696969;
     font-weight:600;
     text-decoration: line-through;
     margin-left: 15px;
 }
 section .xia .bottom-list .module>div:nth-child(5)>a>button{
     width: 113px;
     height: 30px;
     line-height: 25px;
     background-color: white;
     border:1px solid #B5B5B5;
     color: dimgrey;
     font-size: 10px;
     font-weight: bold;
     font-family:"proxima_nova_rgregular";
     transition: all 0.5s ease;
 }
 section .xia .bottom-list .module>div:nth-child(5)>a>button:hover{
     background-color: #74b6c7;
     color: white;
 }
 section .xia .bottom-list .module>div:first-child~div{
     padding-top: 10px;
     padding-left: 30px;
 }

 /*pu.css */
 .colorF5{
    color: #FA5555;
}
.color69{
    color: #696969;
}
.colorB5{
    color: #B5B5B5;
}
.colorE5{
    color:#E5E5E5;
}
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
<template>
    <div class="main">
        <div class="slider"><img src="images/demo01.jpg"></div>
        <div style="clear: left"></div>
        <div class=" container pt-3">
            <ul class="inner d-flex justify-content-around list-unstyled">
                  <li class="">
                    <a href="#">
                      
                        <img :src="products[0].pic" alt=""/>
                        <div class="top-banner-caption">
                            <h1>HIGH HEELS<br/>SALE OFF 30%</h1>
                            <p>Social responsibility diversification</p>
                        </div>
                        
                    </a>
                </li>
                <li class="pl-2">
                     <a href="#">
                        <img :src="products[1].pic" alt=""/>
                        <div class="top-banner-caption">
                            <h1>FREE SHIPPING</h1>
                            <p>peace reduce carbon emissions vaccine</p>
                        </div>
                    </a>
                </li>
                <li class="pl-2">
                    <a href="#">
                        <img :src="products[2].pic" alt=""/>
                        <div class="top-banner-caption">
                            <h1>HANDBAGS<br/>COLLECTION</h1>
                            <p>Diversfication benefit inclusive capitalism</p>
                        </div>
                    </a>
                </li>  
            </ul>
        <h4 class="feature-title pt-3">
            <span>FEATURED COLLECTIONS</span>
        </h4>
        <div class="main-home">
            <ul class="box d-flex justify-content-around list-unstyled">
                <li class="" v-for="p of products.slice(3)">
                     <a href="#"><img :src="p.pic" alt=""/></a>
                    <a href="#" class="imaarea">CLOTHING</a> 
                </li>
                <!--<li class="">
                     <a href="#"><img src="images/demo2_coll2.jpg" alt=""/></a>
                    <a href="#" class="imaarea">COATS</a> 
                </li>
                <li>
                     <a href="#"><img src="images/demo2_coll3.jpg" alt=""/></a>
                    <a href="#" class="imaarea">HANDBAGS</a>
                </li>
                <li class="">
                     <a href="#"><img src="images/demo2_coll4.jpg" alt=""/></a>
                    <a href="#" class="imaarea">HAT</a> 
                </li>-->
            </ul>
        </div>
        <h4 class="feature-title pt-5 pb-5">
                <span>NEW ARRIVALS <span>/ BEST SELLERS / FEATURED PRODUCTS</span></span>
        </h4>
        <div class="main-top main-content justify-content-around d-flex  pb-5">
            <div v-for="s in list.slice(0,5)"> 
                <div>
                    <a><img :src="s.pic" class="pc"></a>
                </div>
                <div>
                    <img src="images/star.png" alt="">
                    <img src="images/star.png" alt="">
                    <img src="images/star.png" alt="">
                    <img src="images/star.png" alt="">
                    <img src="images/star.png" alt="">
                </div>
                <div>{{s.title}}</div>
                <div><span>{{s.price}}</span><span>{{s.price}}</span></div>
                <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
             </div>   
        </div>
            <div class=" main-middle main-content d-flex justify-content-around pb-5">
                <div v-for="f in list.slice(5,10)"> 
                    <div>
                        <a><img :src="f.pic" class="pc"></a>
                    </div>
                    <div>
                        <img src="images/star.png" alt="">
                        <img src="images/star.png" alt="">
                        <img src="images/star.png" alt="">
                        <img src="images/star.png" alt="">
                        <img src="images/star.png" alt="">
                    </div>
                    <div>{{f.title}}</div>
                    <div><span>{{f.price}}</span><span>{{f.price}}</span></div>
                    <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                 </div>  
            </div>
        </div>
        <div id="middle-banner">
            <div class="middle-banner-caption pt-5">
                <div class="big-text">
                    ADVERTISEMENT BANNER
                </div>
                <div class="small-text">
                    The parallax image banner
                </div>
            </div>
        </div>
        <h4 class="feature-title pt-5">
            <span>SALE PRODUCTS</span>
        </h4>
        <div class="container">
                <div class="main-bottom main-content d-flex justify-content-around">
                    <div v-for="s in list.slice(11,16)">
                        <div>
                            <a><img :src="s.pic" class="pc"></a>
                        </div>
                        <div>
                            <img src="images/star.png" alt="">
                            <img src="images/star.png" alt="">
                            <img src="images/star.png" alt="">
                            <img src="images/star.png" alt="">
                            <img src="images/star.png" alt="">
                        </div>
                        <div>{{s.title}}</div>
                        <div><span>{{s.price}}</span><span>{{s.price}}</span></div>
                        <div><router-link :to="'/products'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                    </div>
                </div>
                <div class="products pt-5 pb-5">FEATURED&nbsp;&nbsp;BRANDS</div>
                <div class="middle-banner-footer pb-5">
                    <ul class=" d-flex justify-content-between list-unstyled">
                       <li><a href="#"><img src="images/home_popbra1_brand1.png" alt=""/></a></li>
                        <li><a href="#"><img src="images/home_popbra1_brand2.png" alt=""/></a></li>
                        <li><a href="#"><img src="images/home_popbra1_brand3.png" alt=""/></a></li>
                        <li><a href="#"><img src="images/home_popbra1_brand4.png" alt=""/></a></li>
                        <li><a href="#"><img src="images/home_popbra1_brand5.png" alt=""/></a></li>
                        <li><a href="#"><img src="images/home_popbra1_brand6.png" alt=""/></a></li>
                    </ul>
                </div>
            </div>
        </div>
</template>

<script>
//Vue.component({})
import Vue from 'vue'
/*Vue.filter("getLid",function(val){
    if(String(val).indexOf("=")!=-1){
        var i=val.lastIndexOf("=")
        return `details/${val.slice(i+1)}`;
    }
})*/

Vue.filter("getLid",function(val){
    var lid=val.split("=")[1];
    return "/details/"+lid;
})
    export default {
        data:function(){
            return {
                products:[
                    {pic:""},
                    {pic:""},
                    {pic:""}
                    ],
                list:[
                    {pid:""},
                    {pic:""},
                    {title:""},
                    {price:""},
                    {href:""}
                ]
              }
            },
        mounted(){
            this.axios.get("http://127.0.0.1:3000/index/getIndexProducts").then(res=>{
                this.products=res.data;
            });
            this.axios.get("http://127.0.0.1:3000/index/getIndex").then(res=>{
                console.log(res.data)
                this.list=res.data;
            });
        }
    }
</script>

<style scoped>
.main{
    width: 100%;
}

.main>.slider{
    margin:  0 auto;
    width: 100%;
    height:600px;
    position: relative;
}
.main>.slider>img{
    width:100%;
    height:auto;
}
h4.feature-title{
    text-align: center;
    position: relative;
    font-weight: 500;
    margin-bottom: 20px;;
}
h4.feature-title>span>span{
    color:#808080
}
.main>.container>ul>li{
    position: relative;
}
.main>.container>ul>li>a:before{
    content: '';
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.2);
    position: absolute;
    z-index: 1;
}
.main>.container>ul>li>a>.top-banner-caption{
    position: absolute;
    bottom: 28px;
    left:5px;
    width: 100%;
    padding: 0 40px;
    color:#fff;
    text-align: end;
    z-index: 2;
}
.main>.container>ul>li>a>.top-banner-caption>h1{
    text-transform: uppercase;
    font-size: 30px;
    margin-bottom: 15px;
    line-height: 36px;
}
.main>.container>ul>li>a>.top-banner-caption>p{
    font-size: 15px;
    line-height: 15px;
}
.main>.container>ul>li>a:after{
    content: '';
    width: 90%;
    height: 90%;
    top: 50%;
    left: 50%;
    border: 5px solid rgba(255, 255, 255, 0.4);
    transform: translate(-50%, -50%);
    -webkit-transform: translate(-50%, -50%);
    position: absolute;
    transition: all 0.3s ease 0s;
    -webkit-transition: all 0.5s ease 0s;
}
.main>.container>ul>li:hover>a:after{
    width:100%;
    height:100%;
}
.container>div.main-content>div>div:first-child>a>img{
    width: 206px;
    height: 206px;
    cursor: pointer;
}
.container>div.main-content>div>div:first-child~div{
    font-weight: bold;
    padding-bottom: 3px;
    margin-left: 18px;
}

.container>div.main-content>div>div:nth-child(3){
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}
.container>div.main-content>div>div:nth-child(3):hover{
    color:#74b6c7;
}
.container>div.main-content>div>div:nth-child(4)>span:first-child{
    color: #74b6c7;
    font-weight:600;
}
.container>div.main-content>div>div:nth-child(4)>span:nth-child(2){
    color: #ccc;
    font-weight:600;
    text-decoration: line-through;
    margin-left: 15px;
}
.container>div.main-content>div>div:nth-child(5)>a>button{
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
    cursor: pointer;
}
.container>div.main-content>div>div:nth-child(5)>a>button:hover{
    background-color: #74b6c7;
    color: white;

}
.container>div.main-content>div>div:nth-child(5)>button>img{
    margin-bottom: 5px;
}
.main>#middle-banner {
    background: url(../images/home2_middlebanner_img.jpg);
    min-height: 500px;
    position: relative;
    background-attachment: fixed;
    margin: 20px 0;
}
.main>#middle-banner>.middle-banner-caption>.big-text{
    font-size: 50px;
    text-transform: uppercase;
    color: #fff;
    line-height: 50px;
    text-align: center;
    margin-bottom: 12px;
    font-weight: 500;
}
#middle-banner .middle-banner-caption .small-text {
    font-size: 30px;
    color: #fff;
    line-height: 30px;
    text-align: center;
}
.main>.container>.products{
    font-size:20px;
    font-weight: bold;
    text-align: center;
}

ul,li{
    margin: 0;
    padding: 0;
}

.main>.container>.main-home>.box{
    width:100%;
    height:274px;
    margin:0 auto;
}
.main>.container>.main-home>.box li{
    margin: 5px;
    position: relative;
    display:block;
    width: 375px;
    height: 274px;
    overflow: hidden;
}
.main>.container>.main-home>.box li img{
    position: absolute;
    z-index: 1;
    top:0;
    left:0;
    transition: all 0.4s ease 0s;
}
.main>.container>.main-home>.box li .imaarea{
    text-decoration: none;
    color:#000;
    background: rgba(255,255,255,0.6);
    font-size: 20px;
    font-weight: bolder;
    line-height: 50px;
    text-align: center;
    border-radius: 5px;
    /*padding:5px 12px;*/
    position: absolute;
    z-index: 2;
    left:22px;
    bottom:0px;
    display: block;
    width:231px;
    height:50px;
    text-align: center;
    opacity: 0;
    filter: alpha(opacity=0);
}
.main>.container>.main-home>.box li:hover img{
    transform: scale(1.2,1.2);
    -webkit-transform: scale(1.2,1.2);
}
.main>.container>.main-home>.box li:hover .imaarea{
    opacity: 1;
    filter: alpha(opacity=100);
    bottom:40%;
    transition: all 0.4s ease 0s;
}


.main-content>div>div:first-child>a>img{
    transition: all 0.4s ease 0s;
    -webkit-transition: all 0.4s ease 0s;
    -moz-transition: all 0.4s ease 0s;
    -o-transition: all 0.4s ease 0s;
}
.main-content>div>div:first-child:hover>a>img{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
}
</style>
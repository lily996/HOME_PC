<template>
    <header>
    <div id="header"><!-- container   list-unstyled-->
        <div class="header-banner">
            <div class="ads-item">
                <img src="images/ads1.png" alt="ads-banner-1">
            </div>
        </div>

        <div class="header-contact">
            <div class="container">
                <div>
                    <a style="color:red">Welcome {{uname}}!</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a style="font-weight:bold; " @click.prevent="signout">Logout</a>
                </div>
                <div class="header-contact-img">
                    <ul>
                        <li><img src="images/header-item1.png" alt="header-item1"></li>
                        <li><img src="images/header-item2.png" alt="header-item2"></li>
                        <li><img src="images/header-item3.png" alt="header-item3"></li>
                        <li><img src="images/header-item4.png" alt="header-item4"></li>
                        <li><img src="images/header-item5.png" alt="header-item5"></li>
                        <li><img src="images/header-item6.png" alt="header-item6"></li>
                    </ul>
                </div>
                <div>USD</div>
            </div>
        </div>

        <div class="container header-three">
            <div class="logo" style="padding-right:20px;"><img src="images/logo2.png" alt=""></div>
            <div class="orgin">
                <div>
                    <select>
                        <option value = "1">Volvo</option>
                        <option value = "2">Saab</option>
                        <option value = "3">Opel</option>
                        <option value = "4">Audi</option>
                    </select>
                </div>
                <div>
                    <input type="text" placeholder="Search our store" autocomplete="off">
                        <img  src="images/magnifier.png" alt="">
                </div>
            </div>
            <div class="contact">
                <ul class="list-unstyled" v-if="!islogin">
                    <li>
                        <div><img src="images/header-user.png" alt=""></div>
                        <div style=""><a @click.prevent="login">My Account</a></div>
                    </li>
                    <li>
                        <div><img src="images/header-user.png" alt=""></div>
                        <div><router-link to="/register">Register</router-link></div>
                    </li>
                </ul>
                <ul class="list-unstyled" v-else>
                    <li>
                        <div><img src="images/header-place.png" alt=""></div>
                        <div><a href="#">Store Location</a></div>
                    </li>
                    <li>
                        <div><img src="images/header-user.png" alt=""></div>
                        <div style=""><a @click.prevent="login">My Account</a></div>
                    </li>
                    <li>
                        <div><img src="images/header-cart.png" alt=""></div>
                        <div><a href="#">Shopping Cart</a></div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="header-four" >
            <div class="container">
                <div class="daohang">
                    <ul ><a href="#"></a>
                        <li><div>HOME</div> </li>
                        <li v-on:mouseover='show()' v-on:mouseout='hide()' ><div>COLLECTIONS <img src="images/jiantou.png" alt=""></div></li>
                        <li v-on:mouseover='show2()' v-on:mouseout='hide2()'><div>SHOP<img src="images/jiantou.png" alt=""></div></li>
                        <li><div>TODAY'S DEALS</div></li>
                        <li><div>BLOG</div></li>
                        <li><div>LOOKBOOK</div></li>
                    </ul>
                </div>


                <div class="fu-one" v-show='local' v-on:mouseover='show()' v-on:mouseout='hide()'>
                    <div>
                        <ul class="list-unstyled">
                            <li><a href="#">Book</a><img src="images/jiantou.png" alt=""></li>
                            <li><a href="#">Health & Beatuty</a><img src="images/jiantou.png" alt=""></li>
                            <li><a href="#">Homelife</a></li>
                            <li><a href="#">Home Appliances</a></li>
                            <li><a href="#">Smartphones & Cell Phones</a><img src="images/jiantou.png" alt=""></li>
                            <li><a href="#">Camera-Camcorder</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Kids & Gift</a></li>
                            <li><a href="#">Toy and Gift</a></li>
                            <li><a href="#">Stationery</a></li>
                        </ul>
                    </div>
                </div>

                <div class="fu-two" v-show='localtwo' v-on:mouseover='show2()' v-on:mouseout='hide2()'>
                    <div class="d-flex justify-content-around ">
                        <div class="left col-3">
                            <div><img src="images/logo-b.png" alt=""></div>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati quos tenetur assumenda<br>officiis natus, ex repudiandae ducimus ipsum. Aspernatur sint aliquid eius totam adipisci nobis.
                        </div>
                        <div class="ul-one ">
                            <ul class="list-unstyled">
                                <li>Book</li>
                                <li><a href="#">Health & Beatuty</a></li>
                                <li><a href="#">Homelife</a></li>
                                <li><a href="#">Home Appliances</a></li>
                                <li><a href="#">Smartphones & Cell Phones</a></li>
                                <li><a href="#">Camera-Camcorder</a></li>
                            </ul>
                        </div>
                        <div class="ul-two ">
                            <ul class="list-unstyled">
                                <li>Book</li>
                                <li><a href="#">Health & Beatuty</a></li>
                                <li><a href="#">Homelife</a></li>
                                <li><a href="#">Home Appliances</a></li>
                                <li><a href="#">Smartphones & Cell Phones</a></li>
                                <li><a href="#">Camera-Camcorder</a></li>
                            </ul>
                        </div>
                        <div class="ul-three ">
                            <ul class="list-unstyled">
                                <li>Book</li>
                                <li><a href="#">Health & Beatuty</a></li>
                                <li><a href="#">Homelife</a></li>
                                <li><a href="#">Home Appliances</a></li>
                                <li><a href="#">Smartphones & Cell Phones</a></li>
                                <li><a href="#">Camera-Camcorder</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </header>
</template>

<script>
    export default {
        data(){
            return {
                local:false,
                localtwo:false,
                locals:false,
                islogin:false,
                uname:"",

            }
        },
        mounted(){
            this.axios.post("http://127.0.0.1:3000/users/islogin").then(res=>{
                if(res.data.ok==0)
                    this.islogin=false;
                else{
                    this.islogin=true;
                    this.uname=res.data.uname;
                }
            })
        },
        methods:{
            login(){
                var path=this.$route.path;//获得当前路径
                if(path=="/")
                path="/index"
                this.$router.push("/login/"+encodeURIComponent(path.slice(1)));
            },
            signout(){
                this.axios.get("http://127.0.0.1:3000/users/signout").then(res=>{
                   this.islogin=res.data;
                    location.reload();
                })
            },
             hide(){
                this.local=false
            },
            show(){
                this.local=true
            },
            hide2(){
                this.localtwo=false
            },
            show2(){
                this.localtwo=true
            },
             hides(){
                this.locals=false
            },
            shows(){
                this.locals=true
            },
        }
    }
</script>

<style>
#header{
    z-index: 1000;
}
#header .mt-swipe{
    height:300px;
}
#header div.header-banner>div.ads-item>img{
    width: 100%;
}
/* header-two */
#header div.header-contact{
    background-color: #F0F0F0;
}
#header div.header-contact>.container{
    display: inline-block;
    width: 100%;
    height: 33px;
    display: flex;
    line-height: 33px;
}
#header div.header-contact>.container>div>a:hover{
     cursor:pointer;
}
#header .header-contact-img>ul>li{
    float: right;
    list-style: none;
    margin-right:10px;
}
#header .header-contact-img>ul{
    margin-left:600px;
}
#header .header-contact-img+div{
    font-weight: 600;
}
/* header-three */
#header .header-three{
    display:flex;
    justify-content: space-between;
    height: 107px;
    padding: 25px 0;
}
#header div.header-three ul>li{
    float: left;
}

.orgin{
    /* background:#74b6c7;*/
    width:591px;
    height:46px;
    display:flex;
    margin-top:10px;
}
.orgin>div:first-child{
    width:200px;
    height:46px;
    border:3px solid #74b6c7;
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}

.orgin>div:first-child>select{
    height:40px;
}
.orgin>div>input{
    width:353px;
    height:40px;
    border:0;
    padding-left: 5px;
}
.orgin>div{
    border: 3px solid #74b6c7;
    border-left: 1.5px solid #74b6c7;
    height:46px;
    position: relative;
}
.orgin>div>select{
    border-right: 1.5px solid #74b6c7;
    width: 194px;
}
.orgin>div img{
    position: absolute;
    top:7px;
    left:323px;
}


#header div.contact ul li{
    display: flex;
    flex-direction: column;
    text-align: center;
    font-size: 13px;
    margin-left: 10px;
    border-right: 1px solid black;
    padding-right:15px;
}
#header div.contact ul li a{
    text-decoration:none;
    color:black;
}
#header div.contact ul li a:hover{
    cursor:pointer;
}
#header div.contact{
    margin: auto 0;
}

/* header-four */
#header .header-four{
    height: 45px;
    background-color: #74b6c7;
    color:white;
    position: relative;
}
#header .header-four .daohang ul{
    padding: 0;
    position:absolute;
    top:0px;
    /*left:350px;*/
}
#header .header-four .daohang ul li {
    list-style: none;
    display: inline-block;
    text-align: center;
    margin-bottom: 5px;
}
#header .header-four .daohang ul li:hover{
    cursor:pointer;
}
#header .header-four .daohang ul li:first-child div{
    background-color: #E63737;
}
#header .header-four .daohang ul li div{
    line-height: 17px;
    padding: 15px 35px;
}
#header .header-four .daohang ul li div:hover{
    background-color:rgba(0,0,0,.6);
}
#header .header-four .fu-one{
    color: #949494;
    height: 350px;
    width: 210px;
    background: white;
    border: 1px solid #ddd;
    background-color: white;
    z-index: 300;
    position: absolute;
    top:45px;
    left:500px;
}
#header .header-four .fu-one ul{
    padding: 10px;
    list-style:none;
    border:1px solid #aaa;
    box-shadow:5px 5px 6px #000;
}
#header .header-four .fu-one li{
    padding: 3px;
}
#header .header-four .fu-one li a{
    text-decoration: none;
    color: #949494;
}
#header .header-four .fu-one li a:hover{
    color: #74b6c7;
}
#header .header-four .fu-two{
    color: #949494;
    height: 273px;
    width: 1165px;
    border: 1px solid #ddd;
    background-color: white;
    z-index: 300;
    position: absolute;
    top:45px;
    left:50px;
}

#header .header-four .fu-two>div{
    padding-left: 15px;
    text-align:left;
}
#header .header-four .fu-two a{
    text-decoration: none;
    color: #949494;
}
#header .header-four .fu-two  .left{
    padding-top: 15px;
}

#header .header-four .fu-two  .ul-one>ul>li,.ul-two>ul>li,.ul-three>ul>li{

    padding-top: 10px;
}
#header .header-four .fu-two  .ul-one>ul>li>a:hover,.ul-two>ul>li>a:hover,.ul-three>ul>li>a:hover{
    color: #74b6c7;
}
#header .header-four .fu-two  .ul-one>ul>li:first-child,.ul-two>ul>li:first-child,.ul-three>ul>li:first-child{
    font-size: 23px;
    color: #2C2C2C;
    font-weight: 600;
    padding-bottom: 13px;
}
#header .header-four .fu-two  .ul-three{
    background: url(../images/mega-bg-01.png) no-repeat  top;
    background-size: contain;
}

.left{
    position: relative;
    width: 232px;
    height: 451px;
    margin-right: 20px;
}
.left>ul{
    width: 350px;
    position: absolute;
    top:0px;
    left:0px;
    height:600px;
    background:#fff;
    border:1px solid #B5B5B5;
}
.left>ul>li:first-child{
    width: 350px;
    box-sizing: border-box;
    /*background-color: #EAEAEA;*/
    color: black;
}
.left>ul>li{
    width: 350px;
    height: 41px;
    color: #696969;
    border-bottom: 1px solid #B5B5B5;
    font-size: 13px;
    line-height: 41px;
    padding-left:15px;
    text-align:left;
}
.left>ul>li:hover{
    color: #74b6c7;
}
.left>ul>li>img:first-child{
    padding-right: 15px;
}
.left>ul>li:nth-child(2)>img:nth-child(2), .left>ul>li:nth-child(3)>img:nth-child(2), .left>ul>li:nth-child(6)>img:nth-child(2){
    float:right;
    margin-top: 15px;
    margin-right:10px;
}

/* 浮动元素 */
.left>.fu1,.fu2,.fu3{
    display: flex;
    width: 500px;
    height: 349px;
    border: 1px solid #B5B5B5;
    position: absolute;
    justify-content: space-between;
}

.left>.fu1>ul,.fu2>ul,.fu3>ul{
    margin: 15px;
}
.left>.fu1>ul>li:first-child,.fu2>ul>li:first-child,.fu3>ul>li:first-child{
    font-size: 20px;
    font-weight: 600;
    padding-bottom: 15px
}
.left>.fu1>ul:first-child>li:first-child~li,.fu2>ul:first-child>li:first-child~li,.fu3>ul:first-child>li:first-child~li{
    color: #696969;
    padding-bottom: 10px
}
.left>.fu1>ul:nth-child(2)>li:nth-child(3),.fu2>ul:nth-child(2)>li:nth-child(3),.fu3>ul:nth-child(2)>li:nth-child(3){
    font-weight: 600;
}
.left>.fu1>ul:nth-child(2)>li:nth-child(4)>span,.fu2>ul:nth-child(2)>li:nth-child(4)>span,.fu3>ul:nth-child(2)>li:nth-child(4)>span{
    color:#74b6c7;
}
.left>.fu1 img,.fu2 img,.fu3 img{
    width: 220px;
}
/* .fu1 */
.left>.fu1{
    margin-left: 232px;
    margin-top: 40px;
    background:white;
    z-index:200;
}
/* fu2 */
.left>.fu2{
    margin-left: 232px;
    margin-top: 81px;
    background:white;
    z-index:200;
}
/* fu3 */
.left>.fu3{
    margin-left: 232px;
    margin-top: 204px;
    background:white;
    z-index:200;
}
.slider>.right>img{
}

</style>
   
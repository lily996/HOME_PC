<template>
     <footer>
        <div class="footer-one">
            <div class="container">
                <div><img src="images/footer-email.png" alt="footer-email"></div>&nbsp;
                <div> Make sure you don't miss interesting happenings by joining our newsletter </div>
                <div><input type="text" placeholder="Enter your email here"></div>
                <div><button>subscribe</button></div>
            </div>
        </div>
        <div class="footer-two list-unstyled">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="list-unstyled" style="text-align:left">
                            <li>ABOUT US</li>
                            <li><img src="images/footer-place.png" alt=""> 474 Ontario St Toronto, ON M4X 1M7 Canada</li>
                            <li><img src="images/footer-phone.png" alt="">(+1234)56789xxx</li>
                            <li><img src="images/footer-em.png" alt="">tadathemes@gmail.com</li>
                            <li>Stationery</li>
                            <li>
                                <img src="images/header-item1.png" alt="">
                                <img src="images/header-item2.png" alt="">
                                <img src="images/header-item3.png" alt="">
                                <img src="images/header-item4.png" alt="">
                                <img src="images/header-item5.png" alt="">
                                <img src="images/header-item6.png" alt="">
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3 nihao">
                        <ul class="list-unstyled" style="text-align:left">
                            <li>INFORMATION</li>
                            <li>About us</li>
                            <li>Shipping & Returns</li>
                            <li>Privacy</li>
                            <li>Conditions</li>
                            <li>Online support</li>
                        </ul>
                        <ul class="list-unstyled" >
                            <li style="padding-bottom:45px"></li>
                            <li>Order History</li>
                            <li>Help & FAQs</li>
                            <li>Contact us</li>
                            <li>Manufacturers</li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="list-unstyled">
                            <li>PRODUCT TAGS</li>
                            <li>
                                <div class="kuangjia">
                                    <div>100-200</div>
                                    <div>200-300</div>
                                    <div>400-500</div>
                                    <div>BB</div>
                                    <div>Blue</div>
                                    <div>body Care</div>
                                    <div>Gucci</div>
                                    <div>Hamilton</div>
                                    <div>Mackup</div>
                                    <div>Omega</div>
                                    <div>Perfumes</div>
                                    <div>Red</div>
                                    <div>Skin Care</div>
                                    <div>Tissot</div>
                                    <div>Under 100</div>
                                    <div>White</div>
                                    <div>Yellow</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="list-unstyled" style="text-align:left">
                            <li>RECENT POST</li>
                            <li>Quisque porta felis est ut malesuada lorem dignissim</li>
                            <li>by <span style="color:#FA5555">Tada Theme</span> </li>
                            <li>Section 1.10.33 of de Finibus Bonorum et Malorum, written by Cicero in 45 BC</li>
                            <li>by <span style="color:#FA5555">Tada Theme</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-three">
            <div class="container">
                <div>© 2016 Home Market - Red. All rights Reserved</div>
                <div>
                    <img src="images/footers-one.png" alt="">
                    <img src="images/footers-two.png" alt="">
                    <img src="images/footers-three.png" alt="">
                    <img src="images/footers-four.png" alt="">
                    <img src="images/footers-five.png" alt="">
                    <img src="images/footers-six.png" alt="">
                    <img src="images/footers-seven.png" alt="">
                    <img src="images/footers-eight.png" alt="">
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
     export default {
        data:function(){
            return { }
        }
    }
</script>

<style>
      #footer{
      margin-top:70px;
    }
footer .footer-one{
    display: flex;
    height: 62px;
    background-color: #74b6c7;
}
footer .footer-one .container{
    display: flex;
    line-height: 60px;
}
footer .footer-one .container input{
    height: 32px;
    width:353px;
    padding-left: 10px;
    margin-left: 20px;
    background-color:white;
    border:0;

}
footer .footer-one .container button{
    height: 32px;
    width:115px;
    line-height: 20px;
    font-weight: 600;
    background-color: #363636;
    color: white;
    margin-left: 20px;
    margin-top:15px;
    border:0;
    box-shadow: 0 1px 0 5px black;
    border-radius: 1px;
}
footer .footer-one .container div:nth-child(2){
    color: white;
    margin-left: 3px;
    font-weight: 600;
}
footer .footer-two{
    background-color: #2C2C2C;
    height: 298px;
    color: #696969;
    border-bottom: 1px solid white;
}
footer .footer-two .container .row>div:nth-child(1)>ul>li:first-child,footer .footer-two .container .row>div:nth-child(2)>ul>li:first-child,footer .footer-two .container .row>div:nth-child(3)>ul>li:first-child,footer .footer-two .container .row>div:nth-child(4)>ul>li:first-child{
    padding-top: 30px;
    padding-bottom: 20px;
}
footer .footer-two .container .row>div:nth-child(1)>ul>li:last-child>img{
    padding-right: 10px;
}
footer .footer-two .container .row>div:nth-child(2){
    display: flex;

}
footer .footer-two .container .row>div:nth-child(2)>ul>li:first-child~li{
    padding-bottom: 10px;
}
footer .footer-two .container .row>div:nth-child(2)>ul:nth-child(2){
    padding-left: 10px;
}

footer .footer-two .container .row>div:nth-child(3) .kuangjia>div{
    padding: 5px 8px;
    float: left;
    border: 1px solid white;
    margin: 3px;
    font-size: 12px;
}
footer .footer-two .container .row>div:nth-child(4)>ul>li:first-child~li{
    padding-bottom: 6px;
}
footer .footer-three{
    height: 89px;
    background-color: #2C2C2C;
    color:#696969;
}
footer .footer-three .container{
    justify-content: space-between;
    display: flex;
    line-height: 89px;
}
</style>
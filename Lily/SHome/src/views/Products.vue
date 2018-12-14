<template>
    <div>
         <section>
        <div class="shopList">
            <div>Home › Collection Page</div>
            <div>COLLECTION PAGE</div>
        </div>
        <div class="container">
            <nav>
                <div class="left">
                    <div class="one">
                        <ul class="list-unstyled">
                            <li>> ALL CATEGORIES</li>
                            <li>> Beauty & Health (6)</li>
                            <li>> Book (7)</li>
                            <li>> Camera - Camcorder (7)</li>
                            <li>> Clothing (6)</li>
                            <li>> Home Appliances (8)</li>
                            <li>> Homelife (8)</li>
                            <li>> Kids & Baby (6)</li>
                            <li>> Smartphones & Cell Phones (9)</li>
                            <li>> Sport & Outdoor (6)</li>
                            <li>> Stationery (15)</li>
                        </ul>
                    </div>
                    <div class="t">
                        <ul class="list-unstyled">
                            <li>SHOP BY</li>
                            <li style="font-weight:bold;">Color</li>
                            <li>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                            </li>
                        </ul>
                        <ul class="list-unstyled">
                            <li style="font-weight:bold;">Price</li>
                            <li> Under 100</li>
                            <li>100-200</li>
                            <li>200-300</li>
                            <li>300-400</li>
                            <li>400-500</li>
                        </ul>
                        <ul class="list-unstyled">
                            <li style="font-weight:bold;">Brands</li>
                            <li>Omega</li>
                            <li>Gucci</li>
                            <li>Tissot</li>
                            <li>Hamilton</li>
                            <li>BB</li>
                        </ul>
                        <ul class="list-unstyled">
                            <li style="font-weight:bold;">Type</li>
                            <li>Skin Care</li>
                            <li>Mackup</li>
                            <li>Body Care</li>
                            <li>Hair Care</li>
                           <!-- <li>Perfumes</li>-->
                        </ul>
                    </div>
                    <div class="three">
                        <ul class="list-unstyled">
                            <li>WEEKLY TOP SELLERS</li>
                            <li>
                                <div>
                                    <img src="images/demo1_qs1_100x100.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </div>
                                    <div>
                                        DEMO PRODUCT SAMPLE
                                    </div>
                                    <div>
                                        $19.99
                                    </div>
                                </div>
                            </li>
                            <li> <div>
                                    <img src="images/demo1_qs2_100x100.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </div>
                                    <div>
                                        DEMO PRODUCT SAMPLE
                                    </div>
                                    <div>
                                        $19.99
                                    </div>
                                </div></li>
                            <li> <div>
                                    <img src="images/demo1_qs3_100x100.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </div>
                                    <div>
                                        DEMO PRODUCT SAMPLE
                                    </div>
                                    <div>
                                        $19.99
                                    </div>
                                </div></li>
                        </ul>
                    </div>
                    <div class="four">
                        <img src="images/sb-banner.png" alt="">
                    </div>
                </div>
            </nav>
            <section>
                <div class="top">
                    <div><img src="images/kao2.png" alt="" @click="show"></div>
                    <div><img src="images/kao.png" alt="" @click="hide"></div>
                    <div>
                        <select>
                            <option value = "1">Fuatured</option>
                            <option value = "2">Saab</option>
                            <option value = "3">Opel</option>
                            <option value = "4">Audi</option>
                        </select>
                    </div>
                    <div>Sort by </div>  
                </div>
                <div class="middle" v-if="sh">
                <div class="bottom" v-for="item in plist" :key="item.lid">
                    <div class="module" v-for="p in list.slice(0,5)">
                        <div><img :src="p.pic"></div>
                        <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                        <div>{{p.title}}</div>
                        <div><span>{{p.price}}</span><span>{{p.price}}</span></div>
                        <div><router-link :to="'/details/1'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                    </div>
                    
                        <div class="module" v-for="p in list.slice(5,10)">
                            <div><img :src="p.pic" alt=""></div>
                            <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                            <div>{{p.title}}</div>
                            <div><span>{{p.price}}</span><span>{{p.price}}</span></div>
                            <div><router-link :to="'/details/2'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                        </div>
                       
                            <div class="module" v-for="p in list.slice(10,15)">
                                <div><img :src="p.pic" alt="demo1_product1_208x208.jpg"></div>
                                <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                                <div>{{p.title}}</div>
                                <div><span>{{p.price}}</span><span>{{p.price}}</span></div>
                                <div><router-link :to="'/details/3'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                            </div>
                       
                        <div class="module" v-for="p in list.slice(15,20)">
                            <div><img :src="p.pic" alt="demo1_product1_208x208.jpg"></div>
                            <div><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""><img src="images/star.png" alt=""></div>
                            <div>{{p.title}}</div>
                            <div><span>{{p.price}}</span><span>{{p.price}}</span></div>
                            <div><router-link :to="'/details/5'"><button><img src="images/smallcart.png" alt=""> BUY NOW</button></router-link></div>
                        </div>
                    </div>
                        <a class="a-btn" @click="getMore">
                            <span class="a-btn-text">Click for more</span>
                            <span class="a-btn-slide-text">CLICK!</span>
                            <span class="a-btn-icon-right"><span></span></span>
                        </a>
                </div>
                <div class="ease ml-10" v-else>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product1_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>

                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product2_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product3_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product4_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product5_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product6_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product7_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product8_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product9_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product10_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product11_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product12_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product13_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product14_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                    <div class="bottom-two">
                        <div class="left d-flex just-content-around w-100 h-100">
                            <div class="li-left">
                                <img src="images/demo1_product15_208x208.jpg" alt="">
                            </div>
                            <div class="li-right" >
                                <ul class="right">
                                    <li>
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                        <img src="images/star.png" alt="">
                                    </li>
                                    <li class="title">DEMO PRODUCT SAMPLE</li>
                                    <li class="price"><span>$19.99</span>&nbsp;&nbsp;<span>$24.99</span></li>
                                    <li class="details">Quisque vel enim quis purus ultrices consequat, sed tincidunt massa blandit ipsum</br> interdum tristique cras dictum, lacus eu molestie elementum nulla est auctor. Etiam dan</br> lorem quis ligula elementum porttitor quisem. Duis eget purus urna fusce sed</br> scelerisque ante. Lorem ipsum dolor sit amet consectetur...</li>
                                    <li class="btn"><a><button><img src="images/smallcart.png" alt="">BUY NOW</button></a></li>
                                 </ul>
                             </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </section>
</div>
</template>

<script>
    export default {
        data(){
            return{
                list:[
                        {pic:""},
                        {title:""},
                        {price:""}
                    ],
                    plist:[],
                    pageIndex:0, //属性显示当前页数
                    pageSize:20,   //页大小
                    hasMore:true,  //是否存在下一页
                    pageCount:2,  //总页数
                    sh:true
                }
        },
       mounted(){
           this.axios.get("http://127.0.0.1:3000/products/products").then(res=>{
               // console.log(res.data)
                this.list=res.data;
            });
       },

       methods:{
           getMore(){
               this.pageIndex++;
               //判断是否有下一页的数据
                this.hasMore = this.pageIndex <= this.pageCount;
               //如果没有下一页数据停止函数执行
               if(!this.hasMore){return}
               var url = "http://127.0.0.1:3000/products/shoplist";
               url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize;
               this.axios.get(url).then(res=>{
                   var rows = this.plist.concat(res.data);
                   this.plist = rows;
                   this.pageCount = res.data.pageCount;
                   //console.log(this.pageCount);
               })
           },
           show(){
               this.sh=false;
           },
           hide(){
               this.sh=true;
           }
       },
       created(){
           this.getMore();
       }
      
    }
</script>

<style scoped>
    section>div.shopList{
    width: 100%;
    height: 191px;
    background-image: url('../images/breadcrumb.jpg');
}
section>div.shopList>div{
    color: white;
    text-align: center;
    
}
section>div.shopList>div:first-child{
    padding-top: 55px;
    font-size: 15px;
}
section>div.shopList>div:last-child{
    font-size: 40px
}
section .container{
    display: flex;
    margin-top: 50px;
}
section .container>nav>.left>.one{
    width: 281px;
    height: 420px;
    border: 1px solid #B5B5B5;
    text-align:left;
}
section .container>nav>.left>.one>ul>li:first-child~li{
    padding-left:30px;
}
section .container>nav>.left>.one>ul>li:first-child{
    height: 41px;
    color: #2C2C38;
    font-size: 15px;
    font-weight: 600;
    line-height: 31px;
    padding-left: 10px;
    background-color:#F1F1F1;
}
section .container>nav>.left>.one>ul>li:first-child~li:hover{
    color: #74b6c7;
}
section .container>nav>.left>.one>ul>li:nth-child(2){
    padding-top: 20px;
    font-size: 14px;
}
section .container>nav>.left>.one>ul>li{
    padding: 7px 0 7px 10px;
    font-size: 14px;
}



/* two  */
section .container>nav>.left>.t{
    margin-top: 20px;
    width: 281px;
    height: 621px;
    border: 1px solid #B5B5B5;
    text-align:left;
}
 section .container>nav>.left>.t>ul:first-child>li{
    padding-left: 30px;
}
/*section .container>nav>.left>.t>ul:first-child>li:first-child~li{
    margin-left: 20px;
}*/
.container>nav>.left>.t>ul:first-child~ul>li{
    margin-left: 30px;
}
.container>nav>.left>.t>ul:first-child>li:first-child{
    height: 41px;
    color: #2C2C38;
    font-size: 20px;
    font-weight: 600;
    line-height: 41px;
    padding-left: 10px;
    background-color:#F1F1F1;
}
.container>nav>.left>.t>ul>li:first-child,ul:first-child>li:nth-child(2){
    font-size: 18px;
    font-weight: 400;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(2){
    padding-top:17px; 
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div{
    width: 22px;
    height: 22px;
    border: 1px solid #B5B5B5;
    margin-right: 5px;
    display: inline-block;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div:first-child{
    background-color: red;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div:nth-child(2){
    background-color: #327AC3;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div:nth-child(3){
    background-color:white;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div:nth-child(4){
    background-color:#327AC3;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3)>div:nth-child(5){
    background-color:#F4FC00;
}
.container>nav>.left>.t>ul:first-child>li:nth-child(3),ul>li:first-child~li{
    padding-top: 2px;
}


/* three */
section .container>nav>.left>.three{
    width:281px ;
    height:440px;
    border: 1px solid #B5B5B5;
    margin-top: 20px;
}
section .container>nav>.left>.three>ul>li:first-child{
    height: 41px;
    /*color: #2C2C38;*/
    color:#000;
    font-size: 18px;
    font-weight: 600;
    line-height: 41px;
    padding-left: 10px;
    background-color:#F1F1F1; 
}
section .container>nav>.left>.three>ul>li{
    font-weight:600;
}
section .container>nav>.left>.three>ul>li:first-child~li{
   display: flex;
   margin: 32px 10px;
}
section .container>nav>.left>.three>ul>li:first-child~li>div:nth-child(1)>img{
    width: 78px;
    height: 78px;
}
section .container>nav>.left>.three>ul>li:first-child~li>div:nth-child(2){
    font-size: 10px;
    line-height: 30px;
}
.container>nav>.left>.three>ul>li:first-child~li>div:nth-child(2)>div:nth-child(3){
    color: #FA5555;
    font-size:16px;
}

/* four */
section .container>nav>.left>.four{
    margin-top: 20px;
    position:relative;
}
section .container>nav>.left>.four>img{
    width: 281px;
    height: 281px;
    position:absolute;
    top:0px;
    left:0px;
    
}


/* right */
/* 投票 */
section>.container>section>.top{
    width: 881px;
    height: 40px;
    border:1px solid #F1F1F1;
    line-height: 40px;
}
section>.container>section{
    margin-left: 20px;
}
section>.container>section>.top>div:nth-child(3)>select{
    width: 150px;
    border: 1px solid #B5B5B5;
}
section>.container>section>.top>div{
    float: right;
    padding: 0 10px;
}


/* 商品模块 */
section>.container>section>div.middle>.bottom{
    
    width: 896px;
}
section>.container>section>div.middle>.bottom>.module{
   width: 224px;
   height: 364px;
   float: left;
   padding-left: 15px;
   cursor:pointer;
}
/*商品列表*/
section>.container>section>div.middle>.bottom>.module>div:first-child>img:first-child{
    width: 209px;
    height: 209px;
    transition: all 0.4s ease 0s;
    -webkit-transition: all 0.4s ease 0s;
    -moz-transition: all 0.4s ease 0s;
    -o-transition: all 0.4s ease 0s;
}
section>.container>section>div.middle>.bottom>.module>div:first-child:hover>img:first-child{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
}
section>.container>section>div.middle>.bottom>.module>div:nth-child(3){
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}
section>.container>section>div.middle>.bottom>.module>div:nth-child(3):hover{
    color: #74b6c7;
}

section>.container>section>div.middle>.bottom>.module>div:nth-child(4)>span:first-child{
    color: #74b6c7;
    font-weight:600;
}
section>.container>section>div.middle>.bottom>.module>div:nth-child(4)>span:last-child{
    color: #696969;
    font-weight:600;
    text-decoration: line-through;
    margin-left: 15px;
}
section>.container>section>div.middle>.bottom>.module>div:nth-child(5)>a>button{
    width: 113px;
    height: 30px;
    line-height: 25px;
    background-color: white;
    border:1px solid #B5B5B5;
    color: dimgrey;
    font-size: 10px;
    font-weight: bold;
    cursor:pointer;
    font-family:"proxima_nova_rgregular";
    transition: all 0.5s ease;
}
section>.container>section>div.middle>.bottom>.module>div:nth-child(5)>a>button:hover{
    background-color: #74b6c7;
    color: white;
}
section>.container>section>div.middle>.bottom>.module>div:first-child~div{
    padding-left: 10px;
    font-weight: bold;
}

/*分页样式 */
/*按钮特效 */
.a-btn{
    background:#74b6c7;
    padding-left:20px;
    padding-right:80px;
    width:300px;
    height:38px;
    display:inline-block;
    position:relative;
    border:1px solid #5d81ab;
    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
    -webkit-border-radius:20px;
    -moz-border-radius:20px;
    border-radius:20px;
    margin:50px auto;
    overflow:hidden;
    -webkit-transition:all 0.3s linear;
    -moz-transition:all 0.3s linear;
    -o-transition:all 0.3s linear;
    transition:all 0.3s linear;
    text-decoration: none;
    cursor:pointer;
}
.a-btn{
    cursor:pointer;
}
.a-btn-text{
    padding-top:5px;
    display:block;
    font-size:18px;
    white-space:nowrap;
    text-shadow:0px 1px 1px rgba(255,255,255,0.3);
    color:#446388;
    -webkit-transition:all 0.2s linear;
    -moz-transition:all 0.2s linear;
    -o-transition:all 0.2s linear;
    transition:all 0.2s linear;
}
.a-btn-slide-text{
    position:absolute;
    height:100%;
    top:0px;
    right:52px;
    width:0px;
    background:#63707e;
    text-shadow:0px -1px 1px #363f49;
    color:#fff;
    font-size:18px;
    white-space:nowrap;
    text-transform:uppercase;
    text-align:left;
    text-indent:10px;
    overflow:hidden;
    line-height:38px;
    -webkit-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
    -moz-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
    box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
    -webkit-transition:width 0.3s linear;
    -moz-transition:width 0.3s linear;
    -o-transition:width 0.3s linear;
    transition:width 0.3s linear;
}
.a-btn-icon-right{
    position:absolute;
    right:0px;
    top:0px;
    height:100%;
    width:52px;
    border-left:1px solid #5d81ab;
    -webkit-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
    -moz-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
    box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
}
.a-btn-icon-right span{
    width:38px;
    height:38px;
    opacity:0.7;
    position:absolute;
    left:50%;
    top:50%;
    margin:-20px 0px 0px -20px;
    /*background:transparent url(../images/arrow_right.png) no-repeat 50% 55%;*/
    -webkit-transition:all 0.3s linear;
    -moz-transition:all 0.3s linear;
    -o-transition:all 0.3s linear;
    transition:all 0.3s linear;
}
.a-btn:hover{
    padding-right:180px;
    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
}
.a-btn:hover .a-btn-text{
    text-shadow:0px 1px 1px #5d81ab;
    color:#fff;
}
.a-btn:hover .a-btn-slide-text{
    width:100px;
}
.a-btn:hover .a-btn-icon-right span{
    opacity:1;
}
.a-btn:active{
    position:relative;
    top:1px;
    background:#5d81ab;
    -webkit-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
    -moz-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
    box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
    border-color:#80a9da;
}
.ease{
    width:896px;
}
.bottom-two{
    width:100%;
    height:auto;
    display: flex;
    /*flex-direction: column;*/
}
.bottom-two .left{
    width:100%;
    list-style: none;

}
.bottom-two .left>.li-left>img{
    display:block;
    margin-left:10px;
    width:208px;
    height:208px;
    transition: all 0.4s ease 0s;
    -webkit-transition: all 0.4s ease 0s;
    -moz-transition: all 0.4s ease 0s;
    -o-transition: all 0.4s ease 0s;
}
.bottom-two .left>.li-left>img:hover{
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
}
.bottom-two .left .right{
    margin-top: 20px;
    text-align:left;
}
.bottom-two .left .right li{
    list-style: none;
    margin-top:5px;
}
.bottom-two .left .right .title{
    font-size:12px;
    color:#444;
}
.bottom-two .left .right .price>span:first-child{
    font-size:14px;
    font-weight:600;
    color:#fa5555;
}
.bottom-two .left .right .price>span:nth-child(2){
    color:#8c8c8c;
    font-size:14px;
}
.bottom-two .left .right .details{
    font-size:14px;
    color:#8c8c8c;
}
.bottom-two .left .right .btn>a>button{
    width: 113px;
    height: 30px;
    text-align:center;
    line-height: 25px;
    background-color: white;
    border:1px solid #B5B5B5;
    color: dimgrey;
    font-size: 10px;
    font-weight: bold;
    font-family:"proxima_nova_rgregular";
    transition: all 0.5s ease;
    cursor: pointer;
    position: relative;
    left:-12px;
}
.bottom-two .left .right .btn>a>button:hover{
    background-color: #74b6c7;
    color: white;
}
.bottom-two .left .right .btn>a>button>img{
    position: absolute;
    left:5px;
    top:5px;
}
</style>
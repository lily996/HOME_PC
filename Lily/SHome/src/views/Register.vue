<template>
    <div>
     <div class="shopimg">
        <div>Home › Collection Page</div>
        <div>COLLECTION PAGE</div>
    </div>
    <div class="container pb-5">
        <div class="register">
            <div>REGISTER</div>
            <div><input class="linputone" type="text" placeholder="Uname" v-model="uname"></div>
            <div><input class="linputone" type="text" placeholder="Email" v-model="email"></div>
            <div><input class="linputtwo" type="text" placeholder="Phone" v-model="phone"></div>
            <div><input class="linputthree" type="password"  placeholder="password" v-model="upwd"></div>
            <div><input class="linputfour" type="password"  placeholder="password" v-model="rupwd"></div>
            <div><button class="lbuttonone" @click="register">REGISTER</button></div>
            <div>Return to Store</div>
            <div>Forgot your password?</div>
        </div>
    </div>
</div>
</template>
<script>
    export default {
        data(){
        return{
            uname:"",
            email:"",
            phone:"",
            upwd:"",
            rupwd:""
        }
        },
        methods:{
            register(){
                console.log(11111);
                var uname= this.uname;
                var email = this.email;
                var phone = this.phone;
                var upwd = this.upwd;
                this.axios.get("http://127.0.0.1:3000/users/addUser?uname="+uname+"&email="+email+"&phone="+phone+"&upwd="+upwd).then(res=>{
                if(res.data.code==1){
                    alert("Register success")
                }else{
                    alert("The information you entered is incorrect.")
                }
            })
            }
        },
    }
</script>
<style>
    div.shopimg{
    width: 100%;
    height: 191px;
    background-image: url('../images/breadcrumb.jpg');
}
div.shopimg>div{
    color: white;
    text-align: center;
}
div.shopimg>div:first-child{
    padding-top: 55px;
    font-size: 15px;
}
div.shopimg>div:last-child{
    font-size: 40px
}
div.container>.left,.right{
    margin-top: 40px;

}
.register{
    text-align: center;
}

.register>div:first-child{
    color:#ccc;
    font-weight: 600;
    font-size: 25px;
    margin-top: 50px;
}
.register .linputone,.linputtwo,.linputthree,.linputfour{
    width: 383px;
    height: 40px;
    border: 1px solid #B5B5B5;
    padding-left: 20px;
    margin-top: 15px;
    border: 1px solid #B5B5B5;
}
.register button.lbuttonone{
    border: 0;
    width: 383px;
    height: 40px;
    background-color:#FA5555;
    margin-top: 15px;
    color:white;
    font-weight: 700;
}

.register>div:nth-child(7){
    margin-top: 5px;
}
.register>div:nth-child(8){
    margin-top: 5px;
}
</style>
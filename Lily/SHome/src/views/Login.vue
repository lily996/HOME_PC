<template>
    <div>
          <div class="shopimg">
        <div>Home › Collection Page</div>
        <div>COLLECTION PAGE</div>
    </div>
    <div class="container">
        <div class="login" @keyup.13="signin()">
            <div>LOGIN</div>
            <div><input class="linputone" type="text" placeholder="uname" value="" v-model="uname"></div>
            <div><input class="linputtwo" type="password"  placeholder="password" value="" v-model="upwd"></div>
            <div><button class="lbuttonone" @click="signin()">SIGN IN</button></div>
            <div>Return to Store</div>
            <div>Forgot your password?</div>
        </div>
    </div>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                uname:"",
                upwd:""
            }
        },
        props:["back"],
         methods:{
      signin(){
        this.axios.post(
          "http://127.0.0.1:3000/users/signin",
          Qs.stringify({
            uname:this.uname,
            upwd:this.upwd
          })
        ).then(res=>{
          if(res.data.ok==1){
            this.$router.push("/"+decodeURIComponent(this.back));
                 location.reload();
          }else{
            alert("用户名或密码错误!")
          }
        })
      }
    }
}
</script>

<style scoped>
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
.login{
    width:400px;
    height:400px;
    margin:0 auto;
    border:1px solid #aaa;
    box-shadow:6px 6px 6px #000;
    text-align: center;
}

.login>div:first-child{
    color: 20px;
    font-weight: 600;
    font-size: 25px;
    margin-top: 50px;
}
.login .linputone,.linputtwo{
    width: 383px;
    height: 40px;
    border: 1px solid #B5B5B5;
    padding-left: 20px;
    margin-top: 15px;
    border: 1px solid #B5B5B5;
}
.login button.lbuttonone{
    border: 0;
    width: 383px;
    height: 40px;
    background-color:#FA5555;
    margin-top: 15px;
    color:white;
    font-weight: 700;
}

.login>div:nth-child(5){
    margin-top: 5px;  
}
.login>div:nth-child(6){
    margin-top: 5px;  
}

/*pu.css*/

/*.colorF5{
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
}*/
</style>
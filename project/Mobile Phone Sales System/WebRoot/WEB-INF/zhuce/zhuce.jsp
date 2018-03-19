<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/register.css" />
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/meun.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.validate.js"></script>
<script type="text/javascript" src="../js/resgin.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>

<script type="text/javascript">
    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }

      
     $(function  () {
	//获取短信验证码
	var validCode=true;
	$(".msgs").click (
		function  () {
		var time=30;
		var code=$(this);
		if (validCode) {
			validCode=false;
			code.addClass("msgs1");
		var t=setInterval(function  () {
			time--;
			code.html(time+"秒");
			if (time==0) {
				clearInterval(t);
			code.html("重新获取");
				validCode=true;
			code.removeClass("msgs1");

			}
		},1000)
		}
	})
})

   function checklogin() {
	var telephone_vaildate = /^\d{11}$/;
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var confirm_password= document.getElementById("confirm_password").value;
	var telephone = document.getElementById("telphone").value;
	var agent=document.getElementById("agent").value;
	var email = document.getElementById("email").value;
	var jiaoyanma=document.getElementById("jiaoyanma").value;
	var flag = true;
			
	if (username == "") {

		$("#username_error").text("*用户名不能为空！");
		flag = false;
	}
	if (password == "") {
		$("#password_error").text("*密码不能为空！");
		flag = false;
	}
	if (confirm_password == "") {
		$("#confirm_password_error").text("*请再次输入密码!");
		flag = false;
	}
	if (confirm_password != password) {
		$("#confirm_password_error").text("*二次密码输入错误!");
		flag = false;
	}
	if (telephone==""||telephone.length!=11) {
		$("#telphone_error").text("*电话格式不对！");
		flag = false;
	}
	if (agent == "") {
		$("#agent_error").text("*收货地址不能为空！");
		flag = false;
	}
	if (email == "") {
		$("#email_error").text("*邮箱不能为空！");
		flag = false;
	}
	if (jiaoyanma == "") {
		$("#jiaoyanma_error").text("*请输入正确的验证码！");
		flag = false;
	}

	if (flag) {
		$.post("tozhuce.do", 
			{"username":username,"password":password,"telephone":telephone,"address":agent,"email":email},
			function(data) {

				if (data == 0) {
					alert("用户已经存在！");
				}
			if (data == 1) {
				location.href = "../zhuce/zhuce_success.do?username="+username;
			}
	});

	}
	}
   
</script>


<style type="text/css">
.msgs{display:inline-block;width:104px;color:#fff;font-size:12px;border:1px solid #0697DA;text-align:center;height:30px;line-height:30px;background:#0697DA;cursor:pointer;}
form .msgs1{background:#E6E6E6;color:#818080;border:1px solid #CCCCCC;}
</style>


</head>

<body>
<div class="zhong">
  
  <div class="banner"><img src="../front-images/img_2.gif"/></div>
  <div class="menu" style="">
    <div class="menusel" style="width:95px;margin-left:20px;">
      <h2><a href="../front/front.do">首页</a></h2>
    </div>
    
    <div id="menu1" class="menusel"  style="margin-left:20px;">
      <h2><a href="../wupin/wupin.do">我的物品</a></h2>
 
    </div>
    
    <div id="menu2"  class="menusel" style="margin-left:20px;">
      <h2><a href="../login/login.do">商家登录</a></h2>
      
    </div>
    
    <div id="menu3"  class="menusel" style="margin-left:20px;">
      <h2><a href="../gouwuche/gouwuche.do">购物车</a></h2>
      
    </div>
    <div id="menu4"  class="menusel" style="margin-left:20px;">
      <h2><a href="../user/user.do">个人中心</a></h2>
      
    </div>

    <div id="menu5"  class="menusel" style="margin-left:20px;">
      <h2><a href="../problem/problem.do">问题反馈</a></h2>
    </div>
    
     <div id="menu6"  class="menusel" style="margin-left:20px;">
      <h2><a href="../shoucang/shoucang.do">收藏</a></h2>
    </div>
  </div>
  <div class="main" style="border:1px solid green;">
 <div class="wrapper container" style="width:900px;">
    <form method="post" action="">
        <p class="clearfix">
        	<label class="one" for="user">用户名：</label>
        	<input style="height:45px; width:300px;" name="username" id="username" class="required"  placeholder="请输入用户名" />
        	<span id="username_error" style="color: red;"></span>
        </p>
        <p class="clearfix">
         	<label class="one"  for="password">登录密码：</label>
        	<input id="password" name="userpassword" type="password"  class="{required:true,rangelength:[8,20]}"  placeholder="请输入密码" />
        	<span id="password_error" style="color: red;"></span>
        </p>
        <p class="clearfix">
        	<label class="one" for="confirm_password">确认密码：</label>
        	<input id="confirm_password" name="confirm_password" type="password"  class="{required:true,equalTo:'#password'}"  placeholder="请再次输入密码" />
            <span id="confirm_password_error" style="color: red;"></span>
        </p>
        
        <p class="clearfix">
        	<label class="one" for="telphone">手机号码：</label>
        	<input id="telphone" name="telephone" class="required" placeholder="请输入手机号" />
        	 <span id="telphone_error" style="color: red;"></span>
        </p>
        <p class="clearfix">
        	<label class="one" >校验码：</label>
            
            <input type="text" class="identifying_code" placeholder="请输入校验码"  id="jiaoyanma" name="jiaoyanma">
	        <span class="msgs" style="margin-left:14px;margin-top:5px;" >获取短信验证码</span>
	        <span id="jiaoyanma_error" style="color: red;"></span>
        </p>
        
        <p class="clearfix">
        	<label class="one" for="agent">收货地址：</label>
        	<input id="agent" name="address" type="text" class="required" placeholder="请输入默认收货地址"/>
        	<span id="agent_error" style="color: red;"></span>
        </p>
        
        <p class="clearfix">
        	<label class="one" for="agent">邮箱：</label>
        	<input style="height:45px; width:300px;"  name="email" id="email" type="text" class="required" placeholder="请输入您的邮箱，如：123@qq.com"/>
        	<span id="email_error" style="color: red;"></span>
        </p>
      
       	<p class="clearfix"><input class="submit" type="button" value="立即注册" onclick="checklogin();"/></p>   
        <p class="last"><a href="../front/front.do">立即登录&gt;</a></p>
    </form>
</div>
   
   
  
    
   </div>
   
   
   
   
   
    <div class="clear"></div>
    <div class="huoban">
      <div class="huoban_title"><img src="../front-images/title_2.gif" /></div>
      <div class="huoban_nr">
        <ul>
          <li><img src="../front-images/huoban_logo.gif" /></li>
          <li><img src="../front-images/huoban_logo.gif" /></li>
          <li><img src="../front-images/huoban_logo.gif" /></li>
          <li><img src="../front-images/huoban_logo.gif" /></li>
          <li><img src="../front-images/huoban_logo.gif" /></li>
        </ul>
        <div class="clear"></div>
      </div>
    </div>
  </div>
     <div class="bottom"> Email：985184852@qq.com 联系电话：18251815342 QQ：985184852<br />
                 版权所有 2014-2015 <a href="http://localhost:8080/MobilePhone/front/front.do" title="手机商城 " target="_blank">烽火手机商城</a>
     </div>
</div>

</body>


</html>
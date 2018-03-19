<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="Keywords" content="关键词123">
    <meta name="Description" content="描述">
	<link rel="stylesheet" href="../css/base1.css" type="text/css"></link>
	<link rel="stylesheet" href="../css/login.css" type="text/css"></link>
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script src="js/checkcode.js"></script>
    <script language="javascript" type="text/javascript">
function checklogin(){
	
	        var loginname=document.getElementById("loginname").value;
	        var password=document.getElementById("nloginpwd").value;
              $.post(
                "tologin.do",
                {"buser":loginname,"buser_password":password},
                function(data){
                    if(data==0||data==1)
                    {
                      alert("用户名或密码错误!");
                    }                 
                    else if(data==2){
                       location.href="../main/main.do";
                    }
                    else if(data==3){
                       location.href="../admin/admin.do";
                    }
                }
              );
    
            }

  function reset_msg(id,error){
                $("#"+id).text(error);
            }
</script>
    
	<title>登录页面</title>
</head>
<body>
<div id="content" style="margin-top:-10px;">
   <!-- login-wrapk开始 -->
  <div class="login-wrap">
    <!-- w开始 -->
  	<div class="w">
           <!-- *****************登录页面开始************ -->
  		<div class="login-form">
  			<div class="login-tab login-tab-r">
  				<a href="../front/front.do">首页</a>
  			</div>
			<div style="width:50px;float:right;margin-top:22px;margin-right:20px;"><a href="../login/zhuce.do" style="cursor:pointer;color:#666;">立即注册</a></div>
  			<!-- login-box开始（账户登录） -->
  			<div class="login-box" style="visibility: visible; display:block;margin-top:20px;">
  			  <div class="mt tab-h"></div>
  			  <div class="mc">
  			  	<div class="form">
  			  		<form action="" id="formlogin" method="post" onSubmit="return false;">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<input type="hidden" name="" class="hide" id="" value="">
  			  			<!-- 用户名输入框fore1 -->
  			  			<div class="item item-fore1 item-error">
  			  				<label for="loginname" class="login-label name-label"></label>
  			  				<input type="text" name="loginname" id="loginname" class="itxt" tabindex="1" autocomplete="off" placeholder="邮箱/用户名/已验证手机">
  			  			</div>
  			  			<!-- 密码输入框fore2 -->
  			  			<div id="entry" class="item item-fore2" style="visibility: visible">
  			  				<label class="login-label pwd-label" for="nloginpwd"></label>
  			  				<input type="password" name="" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" tabindex="2" autocomplete="off" placeholder="密码">
  			  			</div>
                        <!-- 自动登录开始fore4 -->
                        <!-- 登录按钮开始 -->
                        <div class="item item-fore5">
                        	<div class="login-btn" style="background:#499df2;border:solid 1px #499df2;">
                        		<a class="btn-img btn-entry" id="loginsubmit" tabindex="6" onClick="checklogin()">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                        	</div>
                        </div>
  			  		</form>
  			  	</div>
  			  </div>
  			  <!-- mc结束 2input+自动登录+登录按钮-->
  				
  			</div>
  			<!-- login-box结束（账户登录） -->
  			<!-- 二维码登录结束 （扫码登录）-->
  			<!-- 登录框底部登录方式 开始qq,微信-->
  		</div>
  		  <!-- ************ 登录页面login-form结束************  -->
  	</div>
  	<!-- w结束 -->
  	<!-- 中间广告部分开始 -->
  	<div class="login-banner" style="background-color: #499df2">
  		<div class="" style="width:800px;">
  			<div id="banner-bg" class="i-inner" style="background: url(../images/a5.png);"></div>
		</div>
  	</div>
  	<!-- 中间背景广告结束 -->
  </div>
	<!-- login-wrap结束 -->
</div>
<!-- 内容部分结束 -->
	
</body>

<script type="text/javascript">
	
</script>
</html>
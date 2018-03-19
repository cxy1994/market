<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册-成功</title>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/meun.js" type="text/javascript"></script>


<script type="text/javascript">
    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }
     
    
   
</script>


</head>

<body><div class="zhong">
  
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
  
    <div style="margin:0 auto; margin-top:100px;  width:600px;height:150px;"> 
      <img src="../front-images/zhucechenggong.png"/>
    </div>
    <div style="text-align:center; margin:0 auto; width:400px;">
      <span style="font-size: 24px; ">您的帐号为：${username}</span>
    </div>
    <div style="text-align:center; margin:30 auto;  width:400px;">
       <a href="../front/front.do"><img style="width:180px;" src="../front-images/dengluanniu.png"/></a>
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
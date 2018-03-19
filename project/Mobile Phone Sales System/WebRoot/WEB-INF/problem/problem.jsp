<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/meun.js" type="text/javascript"></script>
<script src="../js/jquery-1.4.3.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/slide.css">
<!-- 图片的翻滚 -->
<style>
		.ck-slide { width:100%; height: 200px; margin: 0 auto;}
		.ck-slide ul.ck-slide-wrapper { height: 200px;}
</style>


<!-- 图片的翻滚 -->

<script type="text/javascript">
$(document).ready(function(){
		$(".div2").click(function(){ 
			$(this).next("div").slideToggle("slow")  
			.siblings(".div3:visible").slideUp("slow");
		});
	});


  
     function problem(){
    	 var username=document.getElementById("user").value;  	 
    	
    	   var zhuti=document.getElementById("zhuti").value;  	 
   
    	   var neirong=document.getElementById("neirong").value;  	 

    	  
    	  $.post(
                'problemsuccess.do',
               {"username":username,"zhuti":zhuti,"neirong":neirong},
                function(data){
                    if(data==1)
                    {
                      alert("提交成功！");
                      location.href='../problem/problem.do';
                    }
                    else
                    {
                    	alert("用户名输入错误!");
                    }
                   
                }
              );
    	 
     }
     


</script>

<style>
body{ margin:0;font-family:微软雅黑;}
.left{ width:120px; height:100%; border-right:1px solid #CCCCCC ;#FFFFFF; color:#000000; 

font-size:14px; text-align:center;}
.div1{text-align:center; width:120px; padding-top:10px;}
.div2{height:40px; line-height:40px;cursor: pointer; font-size:13px; 

position:relative;border-bottom:#ccc 1px dotted;}

.jbsz {position: absolute; height: 20px; width: 20px; left: 5px; top: 10px; background:url(../front-images/wupin.png);}

.div3{display: none;cursor:pointer; font-size:13px;}
.div3 ul{margin:0;padding:0;}
.div3 li{ height:30px; line-height:30px; list-style:none; border-bottom:#ccc 1px dotted; 

text-align:center;}
</style>


   <style type="text/css">   
        html,body{font-size:12px;margin:0px;height:100%;}   
        .mesWindow{border:#666 1px solid;background:#fff;}   
        .mesWindowTop{border-bottom:#eee 1px solid;margin-left:4px;padding:3px;font-weight:bold;text-align:left;font-size:12px;}   
        .mesWindowContent{margin:4px;font-size:12px;}   
        .mesWindow .close{height:25px;width:35px;border:none;cursor:pointer;text-decoration:underline;background:#fff}   
    </style>
    
    
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
  
  
		<div class="ck-slide">
			<ul class="ck-slide-wrapper">
				<li>
					<a href="../images/banner01.png"><img src="../images/banner01.png" style="width:1000px;" 

alt=""></a>
				</li>
				<li style="display:none">
					<a href="../images/banner02.png"><img src="../images/banner02.png" style="width:1000px;" 

alt=""></a>
				</li>
				<li style="display:none">
					<a href="../images/banner03.png"><img src="../images/banner03.png" style="width:1000px;" 

alt=""></a>
				</li>

				
			</ul>
			<a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-

slide ck-next">下一张</a>
			<div class="ck-slidebox">
				<div class="slideWrap">
					<ul class="dot-wrap">
						<li class="current"><em>1</em></li>
						<li><em>2</em></li>
						<li><em>3</em></li>

					</ul>
				</div>
			</div>
		</div>
		
		<!-- js -->
		<script src="../js/jquery-1.8.3.min.js"></script>
		<script src="../js/slide.js"></script>
		<script>
			$('.ck-slide').ckSlide({
				autoPlay: true
			});
		</script>
		
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
      <h2><a href="#">问题反馈</a></h2>
      
    </div>
    
    <div id="menu6"  class="menusel" style="margin-left:20px;">
      <h2><a href="../shoucang/shoucang.do">收藏</a></h2>
    </div>
  </div>
  
  <div class="main" >
   
   <div style="width:100%;margin-top:100px;">
   <form action="" method="post" id="form1">
   <table style="border:1px solid #99c1f7;margin:0 auto;border-spacing:0px;width:600px;">
      <tr>
         <td align="center" colspan="2" style="border:1px solid #99c1f7;height:40px;">
            <span>信息反馈表</span>
         </td>

      </tr>
      <tr>
         <td align="center" style="border:1px solid #99c1f7;width:150px;">
             <span>用户</span>
         </td>
         
         <td>
           <input type="text" value="${userfankui.username}" disabled="disabled" name="username" id="user"  style="width:450px;background-color:#cecaca;"/>
         </td>
      </tr>
      <tr>
         <td align="center" style="border:1px solid #99c1f7;width:150px;">
             <span>主题</span>
         </td>
         
         <td>
           <textarea name="zhuti" id="zhuti" cols="60" style="width:450px;height:50px;" ></textarea>
         </td>
      </tr>
      <tr>
         <td align="center" style="border:1px solid #99c1f7;width:150px;">
             <span>主要内容</span>
         </td>
         
         <td>
           <textarea name="neirong" id="neirong" cols="60" style="width:450px;height:150px;" ></textarea>
         </td>
      </tr>
      <tr>
         <td align="center" colspan="2" style="border:1px solid #99c1f7;width:150px;">
           <a href="javascript:problem();"><img src="../images/button_14.png" style="margin-right:100px;cursor: pointer;" /></a>
          <img src="../images/button_16.png" onclick="location.href='../front/front.do'" style="cursor:pointer;"/>
         </td>
      </tr>
   </table>
   </form>
   </div>

   
   </div>
   

    <div class="clear"></div>
    <div class="huoban">
      <div class="huoban_title"><img src="../front-images/title_2.gif" /></div>
      <div class="huoban_nr">
        <ul>
          <li><img src="../front-images/guomei.jpg" /></li>
          <li><img src="../front-images/jingdong.jpg" /></li>
          <li><img src="../front-images/taobao.jpg" /></li>
          <li><img src="../front-images/paipai.jpg" /></li>
          <li><img src="../front-images/suning.jpg" /></li>
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
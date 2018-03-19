<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>烽火手机商城</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/kf.css" rel="stylesheet" type="text/css" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
<script type="text/javascript" src="../js/kf.min.js"></script>
<script type="text/javascript" src="../js/kf.js"></script>
<script type="text/javascript" src="../js/meun.js"></script>
<script type="text/javascript" src="../js/ads.js"></script>
<link rel="stylesheet" href="../css/slide.css">
<!-- 图片的翻滚 -->
<style>
		.ck-slide { width:100%; height: 200px; margin: 0 auto;}
		.ck-slide ul.ck-slide-wrapper { height: 200px;}
</style>


<!-- 图片的翻滚 -->

<style>
html,body,h2{margin:0;}
img{border:none}
#pop{background:#fff;width:300px; height:282px;font-size:12px;position:fixed;left:0;bottom:0;}
#popHead{line-height:32px;background:#f6f0f3;border-bottom:1px solid #e0e0e0;font-size:12px;padding:0 0 0 10px;}
#popHead h2{font-size:14px;color:#666;line-height:32px;height:32px;}
#popHead #popClose{position:absolute;right:10px;top:1px;}
#popHead a#popClose:hover{color:#f00;cursor:pointer;}
</style>
<script language="javascript" type="text/javascript">
    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }  
     
      function checklogin(){
              $.post(
                "tofront.do",
                $("#loginform").serialize(),
                function(data){

                    if(data==0)
                    { 
                       alert("用户名错误!");    
                    }
                    else if(data==1){
                       alert("密码错误！");
                
                    }
                     else if(data==2){
                       alert("验证码错误！");

                    }  
                     else{
                    	   alert("登陆成功！");
                    	 location.href="../front/front.do";
                      }
                }
              );  
              
               
          
     }
      function tuichu(){
       location.href="../front/removefront.do";
      }
      
      
     function change(){         
          $("#checkImage").attr("src","createImage.do?data="+new Date().getTime());
           }
     
    function gouwuche(){ 
           var a=document.getElementById("gouwuche");
           a.href = "../gouwuche/gouwuche.do"; 
    			
    }
    function user(username){
    	if(username){
    		alert("请登录！");	
    	}
        else{ 
           var a=document.getElementById("user");
           a.href = "../user/user.do"; 
       }
    			
    }
    
        function wupin(username){
    	if(username){
    		alert("请登录！");	
    	}
        else{ 
           var a=document.getElementById("wupin");
           a.href = "../wupin/wupin.do"; 
       }
    			
    }
        
         function problem(username){
    	if(username){
    		alert("请登录！");	
    	}
        else{ 
           var a=document.getElementById("problem");
           a.href = "../problem/problem.do"; 
       }
    			
    }
            function ShouCang(username){
    	if(username){
    		alert("请登录！");	
    	}
        else{ 
           var a=document.getElementById("shoucang");
           a.href = "../shoucang/shoucang.do"; 
       }
    			
    }
    
    
    
    function jiaru(phone_id,user_id,phone_number){
    	if(phone_number<=0){
    		alert("库存不足！请联系商家!");
    	}
    	else{
    		location.href="../front/addcar.do?phone_id="+phone_id+"&user_id="+user_id;
    	    alert("成功加入购物车!");
    		
    	}
    	
    }
    
    
    
    

   	function sousuo(){
               var value = document.getElementById("sousuo").value;
              location.href="../front/front.do?sousuo="+value;
             
    	}
   	
   	
   	
   function shoucang(phone_id){
   		$.post(
                "toShouCang.do",
                {"phone_id":phone_id},
                function(data){

                    if(data==-1)
                    { 
                       alert("请登陆!");    
                    }
                    else if(data==0){
                       alert("收藏失败！");
                
                    }
                     else if(data==1){
                       alert("收藏成功！");

                    }
                    else if(data==2){
                    	alert("该物品已经收藏!");
                    }
                }
              );  
   	}
    	   	
    	   	
    	   	function fenlei(){
    	   		 
    	   	   obj = document.getElementsByName("checkbox");
                    fenlei = [];
                for(k in obj){
                if(obj[k].checked)
                    fenlei.push(obj[k].value);
                }
             
                var jiageObj=null;
                var jiage=document.getElementsByName("pricebox");
             
                for (var i=0;i<jiage.length;i++){ //遍历Radio 
					if(jiage[i].checked){ 
						jiageObj=jiage[i].value; 
					}
    	   	    }
                if(jiageObj==null||jiageObj=="-1"){
                	jiageObj="";
                }
                //var jiage=$("input[name='pricebox']:checked").val();
                  location.href="../front/front.do?fenlei="+fenlei+"&jiage="+jiageObj;
         }
    	  
    	   	var xiaoliang_enabled=true;
    	   	var jiage_enabled=true;
    	   	var kucun_enabled=true;
    	   	function paixu(type){
    	   		if(type==1){   	   			
    	   			if(xiaoliang_enabled){
    	   			
    	   				document.getElementById("xiaoliang").innerHTML="销量↑";
    	   				xiaoliang_enabled=false;
    	   			}else{
    	   				document.getElementById("xiaoliang").innerHTML="销量↓";
    	   				xiaoliang_enabled=true;
    	   			}
    	   		}
    	   		else if(type==2){
    	   			if(jiage_enabled){
    	   			
    	   				document.getElementById("jiage").innerHTML="价格↑";
    	   				jiage_enabled=false;
    	   			}else{
    	   				document.getElementById("jiage").innerHTML="价格↓";
    	   				jiage_enabled=true;
    	   			}
    	   			  location.href="../front/front.do?paixu="+type+"&jiage_enabled="+jiage_enabled;
    	   		}else if(type==3){
    	   			if(kucun_enabled){
    	   			
    	   				document.getElementById("kucun").innerHTML="库存↑";
    	   				kucun_enabled=false;
    	   			}else{
    	   				document.getElementById("kucun").innerHTML="库存↓";
    	   				kucun_enabled=true;
    	   			}
    	   		}
    	   		

    	   		
    	   		
    	   	}
    	   	
    	   	function sortjiage(){
    	   		var value=document.getElementById("jiage").innerText;
    	   		if(value=="价格↑"){
    	   		  	document.getElementById("jiage").innerHTML="价格↓";
    	   		  	location.href="../front/front.do?paixu="+2+"&jiage_enabled="+true;
    	   		}
    	   		else if(value=="价格↓"){
    	   			document.getElementById("jiage").innerHTML="价格↑";
    	   			location.href="../front/front.do?paixu="+2+"&jiage_enabled="+false;
    	   		}
    	   	}
    	   	
    	   		function sortkucun(){
    	   		var value=document.getElementById("kucun").innerText;
    	   		if(value=="库存↑"){
    	   		  	document.getElementById("kucun").innerHTML="库存↓";
    	   		  	location.href="../front/front.do?kucun_paixu="+3+"&kucun_enabled="+true;
    	   		}
    	   		else if(value=="库存↓"){
    	   			document.getElementById("kucun").innerHTML="库存↑";
    	   			location.href="../front/front.do?kucun_paixu="+3+"&kucun_enabled="+false;
    	   		}
    	   	}
    	   		
    	   		function sortxiaoliang(){
    	   		var value=document.getElementById("leixing").innerText;
    	   		if(value=="类型↑"){
    	   		  	document.getElementById("leixing").innerHTML="类型↓";
    	   		  	location.href="../front/front.do?leixing_paixu="+1+"&leixing_enabled="+true;
    	   		}
    	   		else if(value=="类型↓"){
    	   			document.getElementById("leixing").innerHTML="类型↑";
    	   			location.href="../front/front.do?leixing_paixu="+1+"&leixing_enabled="+false;
    	   		}
    	   	}
    	   	
    	   	
   
        
</script>


</head>

<body>
<div class="zhong">
  
 	

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
    <div class="menusel" style="width:95px; line-height:14px;">
      <h2><a href="../front/front.do">首页</a></h2>
    </div>
    
    <div id="menu1" class="menusel"  style="line-height:14px;">
      <h2><a href="" id="wupin" onclick="wupin(${frontuser.username==null});" >我的物品</a></h2>
 
    </div>
    
    <div id="menu2"  class="menusel" style="line-height:14px;">
      <h2><a href="../login/login.do">商家登录</a></h2>
      
    </div>
    
    <div id="menu3"  class="menusel" style="line-height:14px;">
      <h2><a href="" id="gouwuche" onclick="gouwuche();" >购物车</a></h2>
      
    </div>
    <div id="menu4"  class="menusel" style="line-height:14px;">
      <h2><a href="" id="user" onclick="user(${frontuser.username==null});" >个人中心</a></h2>
      
    </div>

    <div id="menu5"  class="menusel" style="line-height:14px;">
      <h2><a href="" id="problem" onclick="problem(${frontuser.username==null});" >问题反馈</a></h2>
    </div>
     <div id="menu6"  class="menusel" style="line-height:14px;">
      <h2><a href="" id="shoucang" onclick="ShouCang(${frontuser.username==null});" >我的收藏</a></h2>
    </div>
  </div>
  <div class="main" >
    <div class="left" >
      <div class="box_1" >
        <div class="left_title" >用户登录</div> 
         <c:choose>
         	<c:when test="${frontuser.username==null}">
         		<form action="" method="post" id="loginform">
			        <table width="100%" border="0" cellspacing="0" cellpadding="0">
			          <tr>
			            <td style="font-size:12px" width="32%" height="37" valign="middle">用户名：</td>
			            <td width="68%" valign="middle">
			              <input type="text" name="username" id="textfield" class="input_1"/>
			            </td>
			          </tr>
			          <tr>
			            <td height="37" style="font-size:12px" valign="middle">密　码：</td>
			            <td valign="middle">
			              <input type="password" name="password" id="textfield2" class="input_2"/>
			            </td>
			          </tr>
			          <tr>
			            <td height="37" style="font-size:12px" valign="middle">验证码：</td>
			            <td valign="middle">
			              <input type="text" name="yanzhengma" id="textfield3" class="input_3" style="float:left"/>
			              <span style="float:left; margin-left:6px;"><img src="createImage.do" id="checkImage" alt="验证码" title="点击更换" onclick="change();"/></span></td>
			          </tr>
			          <tr>
			            <td colspan="2" style="margin-bottom:20px;">
			              &nbsp;&nbsp;&nbsp;<!-- -32px 0 0 100px; -->
			               <a href="javascript:checklogin();"></a>&nbsp;&nbsp;&nbsp;
			              <button type="button" style="width:48px;height:28px;margin-top:6px;cursor:pointer; background-color:#499df2;color:#fff;margin-bottom:10px;" onclick="checklogin()">登录</button>
			              <button type="button"  style="width:48px;height:28px;margin-top:6px;cursor:pointer; background-color:#499df2;color:#fff;margin-bottom:10px;"  onclick="location.href='../zhuce/zhuce.do'">注册</button> 
			            </td>
			          </tr>
			        </table>
			       </form>
			       
         	</c:when>
            <c:otherwise>
            	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 auto;">
		          <tr>
		            <td style="font-size:12px" width="32%" height="37" valign="middle">用户名：</td>
		            <td><span style="font-size:12px">${frontuser.username}</span></td> 
		          </tr>
		          <tr>
		            <td height="37" style="font-size:12px" valign="middle">时 &nbsp;&nbsp;间：</td>
		            <td valign="middle">
		              <span style="font-size:12px">
		                 <% Calendar calendar=Calendar.getInstance(); 
		                 
		                 int year=calendar.get(Calendar.YEAR); 
		                 int month=calendar.get(Calendar.MONTH)+1; 
		                 int day=calendar.get(Calendar.DATE); 
		                 int hour=calendar.get(Calendar.HOUR);
		                 int minute=calendar.get(Calendar.MINUTE);
		                 int second=calendar.get(Calendar.SECOND);
		                 String date=year+"/"+month+"/"+day+"  "+hour+":"+minute+":"+second;
		                 out.println(date);  %>
		               </span>
		            </td>
		          </tr> 
		          <tr>
		            <td colspan="2">
		              &nbsp;&nbsp;&nbsp;
		               <button type="button" style="width:48px;height:28px;margin-top:6px;cursor:pointer; background-color:#499df2;color:#fff;margin: 5px;float:right;" onclick="tuichu()">退出</button>
		            
		            </td>
		          </tr>
		        </table>
            </c:otherwise>
         </c:choose>
     
        
        
      </div>
      <div class="box_1" >
        <div class="left_title">销量排行</div>
        <div class="left_nr">
          <ul style="list-style-type:none;">
          <c:forEach items="${phone1}" var="p" begin="0" end="9" varStatus="v" >
            <li><a href="#">${v.count} . ${p.phonename}</a></li>
          </c:forEach> 
          </ul>
        </div>
      </div>

      <div class="box_1" style="margin:0px; " >
        <div class="left_title" >联系我们</div>
        <div class="left_nr">
          <ul>
            <li><a href="malito:985184852@qq.com">Email:985184852@qq.com</a></li>
             <li><a href="malito:985184852@qq.com">QQ:985184852</a></li>
             <li><a href="malito:985184852@qq.com">客服电话:12345678911</a></li>
          </ul>
        </div>
      </div>
    </div>
    
   
    <!-- right -->
   <div class="right" style=" width:799px; margin-left:5px;margin-top:10px;">
     
      <!-- 品牌 -->
      <div style="border:1px solid gray; width:799px; margin:2px 10px;" >
         <!--<table id="pinpai">
           <tr>
              <td style="width:100px;text-align:right;">  
                 <span style="font-size:16px; color:black;">品牌：</span> 
              </td>
              <td >
              
         <input type="checkbox" name="buxian" value="不限" checked="checked"/>
          <span style="font-size:14px; color:red;" >不限</span> 
          
          <c:forEach items="${pinpai}" var="pinpai" varStatus="status">
          
               <input type="checkbox" name="pinpai" value="${pinpai}" />
               <span style="font-size:14px; color:black;">${pinpai}</span>
               
           </c:forEach>                
              </td>
           </tr>
         </table>-->
         <div class="classificationBox">
         <span>分类：</span>
         	<ul>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="手机"  
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==1}">checked</c:if>
         		</c:forEach>
         		   />手机</a></li>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="服饰" 
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==2}">checked</c:if>
         		</c:forEach>
         		/>服饰</a></li>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="酒类" 
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==3}">checked</c:if>
         		</c:forEach>
         		/>酒类</a></li>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="电器" 
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==4}">checked</c:if>
         		</c:forEach>
         		/>电器</a></li>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="化妆品" 
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==5}">checked</c:if>
         		</c:forEach>
         		/>化妆品</a></li>
         		<li><a><input type="checkbox" name="checkbox" onclick="fenlei()" value="生活用品" 
         		<c:forEach items="${fenleicheckbox}" var="fenlei" varStatus="status">
         		 <c:if test="${fenlei==6}">checked</c:if>
         		</c:forEach>
         		/>生活用品</a></li>
         	</ul>
         </div>
         <div class="priceBox">
         	<span>价格：</span>
         	<ul>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="-1" checked/>不限</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="0-100" <c:if test="${priceRadio[0]==0}">checked</c:if> />0-100</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="100-200" <c:if test="${priceRadio[0]==100}">checked</c:if> />100-200</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="200-500" <c:if test="${priceRadio[0]==200}">checked</c:if> />200-500</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="500-1000" <c:if test="${priceRadio[0]==500}">checked</c:if> />500-1000</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="1000-2000" <c:if test="${priceRadio[0]==1000}">checked</c:if> />1000-2000</span></li>
         	    <li><span><input type="radio" name="pricebox" onclick="fenlei()" value="2000-5000" <c:if test="${priceRadio[0]==2000}">checked</c:if> />2000-5000</span></li>
         	</ul>
         </div>
      </div>
      <!-- 品牌 -->
 
       <!--<img src="../front-images/xuxian.png" style="width:735px;"/>-->
     
      <!-- 价格 -->
      <!--<div style="border:1px solid gray; width:718px; margin:2px 10px;">
        <table >
           <tr >
              <td style="text-align:right;width:100px;">
                  <span style="font-size:16px; color:black;">价格：</span> 
         
              </td>        
          <td>
             <input style="border:#cccccc solid 1px;" type="text" name="lowprice" id="lowprice" size="10" value=""/> —
             <input style="border:#cccccc solid 1px;" type="text" name="highprice" id="highprice" size="10" value=""/> 
         </td>
              
           </tr>
        </table>
          
      </div>-->
      <!-- 价格 -->
      
       <!--<img src="../front-images/xuxian.png" style="width:735px;"/>-->
      
      <!-- 主屏尺寸 -->
      <!--<div style="border:1px solid gray; width:718px; margin:2px 10px;">
          <table>
          <tr>
             <td style="width:100px;text-align:right;">
             <span style="font-size:16px; color:black;">屏幕尺寸：</span>
        
             </td>
             <td>
               <input type="checkbox" name="buxian" value="不限" checked="checked"/>
               <span style="font-size:14px; color:red;" >不限</span>
               
               
               <c:forEach items="${chicun}" var="chicun" varStatus="status">
               <input type="checkbox" name="chicun" value="${chicun}"/>
               <span style="font-size:14px; color:black;">${chicun}</span>
               </c:forEach>
               
               
             </td>
          </tr>
          </table>
      </div>-->
      <!-- 主屏尺寸 -->
      
      <!--<img src="../front-images/xuxian.png" style="width:735px;"/>-->
  
       <!-- cpu -->
            <!--<div style="border:1px solid gray; width:718px; margin:2px 10px;">
            <table>
               <tr>
               
                 <td style="width:100px;text-align:right;">
                   <span style="font-size:18px; color:black;">cpu：</span>
                 </td>
                 <td>
                   <input type="checkbox" name="buxian" value="不限" checked="checked"/>
                   <span style="font-size:14px; color:red;" >不限</span>
           
                   <c:forEach items="${cpu}" var="cpu" varStatus="status">
                   
                      <input type="checkbox" name="cpu" value="${cpu}"/>
                      <span style="font-size:14px; color:black;">${cpu}</span>
                  
                  </c:forEach>
          
                 </td>
               </tr>
            </table>
          </div> -->   
   <!-- cpu -->
      
      <!--排序 -->
     <div style="margin-top:10px;width:801px;margin-left:10px;margin-bottom:10px;"> 
           <div class="" style="overflow:hidden; border:1px solid gray;">
              <div  style="width:400px;margin-top:9px;float:left;margin-left:20px;margin-bottom:9px;">
                <!--<img style="margin-left:5px;cursor:hand;" src="../front-images/11.gif"/>-->
                <a class="paixustyle" onclick="sortxiaoliang()">
                <span id="leixing">
                <c:choose>
                   <c:when  test="${sortLeixing==false}"> 类型↑</c:when>
                    <c:otherwise>类型↓</c:otherwise>                                           
                </c:choose>                                     
                </span></a> 
                <a class="paixustyle" onclick="sortjiage()">
                <span id="jiage">
    
                 <c:choose>
                   <c:when  test="${sortPrice==false}"> 价格↑</c:when>
                    <c:otherwise>价格↓</c:otherwise>                                           
                </c:choose>  

                </span></a> 
                <a class="paixustyle" onclick="sortkucun()"><span id="kucun">
                 <c:choose>
                   <c:when  test="${sortKucun==false}"> 库存↑</c:when>
                    <c:otherwise>库存↓</c:otherwise>                                           
                </c:choose> </span></a> 
              </div> 
              <!--<div  style="width:95px;margin-top:12px;float:right;">
               <img style="margin-left:5px;cursor:hand;" src="../front-images/搜索.gif" onclick="sousuo();"/> 
              </div>-->
              <div class="keyvalue">
              		<span>关键字：</span>
              		<input style="border:1px solid #eee;" type="text" id="sousuo"/>
              		<button onclick="sousuo();">搜索</button>
              </div>
           </div>
      </div>
       <!-- 排序 -->
       
         <div style="border:1px solid gray; width:799px; margin:2px 10px;">
            <div style="width:799px; margin:2px 2px;">
              <div class="goodsBox" style="overflow:hidden;" >
              <c:forEach items="${phoneAll}" var="p" varStatus="status">
            	<div class="" style="width:152px; margin-right:24px; float:left; margin-top:20px;margin-left:23px;">
            	<img src="${path}/upload/${p.picture}" style="border:1px solid #ccc;"/>
            		<div align="center" style="font-size:16px; margin-top:10px">
            			<p><span style="color: black;">${p.phonename}</span></p>
            			<p><span>价格</span><a style="color:red;">￥${p.phone_price}</a></p>
            			<p><a style="text-decoration:underline;" href="javascript:jiaru(${p.phone_id},<c:if test="${empty user1.user_id}">-1</c:if><c:out value="${user1.user_id}"/>,${p.phone_number});">加入购物车</a></p>
            			<p><a>库存：<span>${p.phone_number}</span></a></p>
            			<p><span style="color:red; font-size:12px;font-weight:bold;cursor:pointer;text-decoration:underline;" onclick="shoucang(${p.phone_id});">加入收藏</span></p>
            		</div>
            	</div>
            	</c:forEach>
            </div>	

       
       
       
       <!-- 
       <div style="border:1px solid gray; width:799px; margin:2px 10px;">
            <div style="width:712px; ">
            
             <c:forEach items="${phoneAll}" var="p" varStatus="status">
                 <table style=" width:799px;" id="table1"  onMouseOver="this.style.background='#cccccc';" onMouseout="this.style.background='white';">
                       <tr >
                          <td  rowspan="3" >
                            <img id="img" src="${path}/upload/${p.picture}"/>
                          </td>
                          <td style="padding-top:10px;text-valign:middle;" >
                              <span style="font-size:14px;">型号:</span> <span style="color:black;font-size:14px;">${p.phonename}</span>
                          </td >
                          <td style="padding-top:10px;" >
                              <span style="font-size:14px;">主屏尺寸:</span><span style="color:black;font-size:14px;">${p.chicun}英寸   </span>                                              
                          </td>
                          <td rowspan="3" style="width:90px;" align="center">
                              <span style="font-size:14px;">价格:</span><span style="color:red; font-size:14px;">￥${p.phone_price}</span>
                            <a href="javascript:jiaru(${p.phone_id},${user1.user_id},${p.phone_number});"><span style="color:red; font-size:12px;font-weight:bold;">加入购物车</span></a>
                            <div><span style="color:red; font-size:12px;font-weight:bold;">库存:${p.phone_number}</span></div>
                          <div><span style="color:red; font-size:12px;font-weight:bold;cursor:pointer;" onclick="shoucang(${p.phone_id});">收藏</span></div>
                          </td>
                       </tr>
                       <tr>
                         
                          <td style="padding-top:10px;">
                              <span style="font-size:14px;">前置摄像头:</span><span style="color:black;font-size:14px;">${p.front}像素 </span>
                          </td>
                          <td style="padding-top:10px;">
                              <span style="font-size:14px;">后置摄像头:</span><span style="color:black;font-size:14px;">${p.behind}像素</span>
                          </td>
                          
                       </tr>
                       <tr style=" width:799px;">
                          
                          <td style="padding-top:10px;">
                              <span style="font-size:14px;">cpu型号:</span><span style="color:black;font-size:14px;">${p.cpu}</span>
                          </td>
                          <td style="padding-top:10px;">
                              <span style="font-size:14px;">内存容量:</span><span style="color:black;font-size:14px;">${p.memery}</span>
                          </td>
                         
                       </tr>
                 </table>
                </c:forEach> 
               -->
                 
            </div>

       </div>
       
         <!--分页-->
                <div id="pages">
               <!-- 如果当前页是第一页，不能点上一页 -->
               <c:choose>
                	<c:when test="${frontPage.currentPage==1}">
        	        <a href="#">上一页</a>
        	        </c:when>
        	        <c:otherwise>
                			<a href="../front/front.do?currentPage=${frontPage.currentPage-1}">上一页</a>
                	</c:otherwise>
                </c:choose>
        	     <!-- 循环输出页面，从1开始到 totalPage结束-->   
                  <c:forEach begin="1" end="${frontPage.totalPage}" var="p">
                    <!-- 如果是当前页有样式，否则为没有样式 -->
                     <c:choose>
                         <c:when test="${p==frontPage.currentPage}">
                             <a href="../front/front.do?currentPage=${p}" class="current_page">${p}</a>
                         </c:when>
                         <c:otherwise>
                              <a href="../front/front.do?currentPage=${p}">${p}</a>
                         </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  
                  <!--  如果当前页是最后一页，不能点下一页 -->
                  <c:choose>
                    <c:when test="${frontPage.currentPage==frontPage.totalPage}">
                       <a href="#">下一页</a>
                    </c:when>
                    <c:otherwise>
                       <a href="../front/front.do?currentPage=${frontPage.currentPage+1}">下一页</a>
                    </c:otherwise>
                  </c:choose>
                </div>
             <!-- 分页 -->

    </div>
    <!-- right -->
   
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
                 &copy;版权所有 2014-2015 <a href="http://localhost:8080/MobilePhone/front/front.do" title="手机商城 " target="_blank">烽火手机商城</a>
     </div>
</div>



<div align="center">
</div>
<!-- 代码 开始 -->
<div id="top">

</div>
<!-- 代码 结束 -->


<div id="main">
  <div id="pop" style="display:none;">
  	<div id="popHead">
		<a id="popClose" title="关闭">关闭</a>
		<h2>热销产品</h2>
	</div>
	<div id="popContent">
	<a href="http://www.baidu.com/" target="_blank"><img src="../front-images/imgad.jpg"></a>
	</div>
  </div>
<script>
var popad=new Pop();
</script>
</div>

<script language=JavaScript src="../js/ad.js"></script>



</body>


</html>
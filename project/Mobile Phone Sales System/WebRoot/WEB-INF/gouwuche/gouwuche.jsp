<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<script src="../js/meun.js" type="text/javascript"></script>
<script src="../js/jquery-1.6.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/slide.css">
<!-- 图片的翻滚 -->
<style>
		.ck-slide { width:100%; height: 200px; margin: 0 auto;}
		.ck-slide ul.ck-slide-wrapper { height: 200px;}
		
</style>




<script type="text/javascript">

   
   //购物车自增自减     
         $(function(){ 
        $(".add").click(function(){ 
        	
          var t=$(this).parent().find('input[class*=text_box]'); 
           t.val(parseInt(t.val())+1) 
   
           setTotal(); 
          }) 
        $(".min").click(function(){ 
        	
          var t=$(this).parent().find('input[class*=text_box]'); 
          t.val(parseInt(t.val())-1) 
          if(parseInt(t.val())<0){ 
              t.val(0); 
            } 
          
          setTotal(); 
         }) 
        function setTotal(){
        	var s=0; 
        	var a=0;
        	var b=0;
            var changdu;
            changdu=document.getElementById("changdu").value;
        	var index=0;
        	for(;index<changdu;)
        		{
            a=document.getElementById("price"+index).innerHTML;
        	
        	b=$("#input"+index).val();
            
            
        	$("#total"+index).html(a*b); 
        	index++;
        	 s+=a*b;
        	}
        	$("#zongjia").html(s); 
         
        } 
        setTotal(); 
    }) 
   
   



    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }
     
     function shanchu(car_id){
    	var r = window.confirm("确定要删除此物品么？");
    	if(r==true){
    		
    		location.href="../gouwuche/deletegouwuche.do?car_id="+car_id;
    	}

     }   
     function tijiao(index){
    	var phonename=document.getElementById("phonename"+index).innerHTML;
    	var number=document.getElementById("input"+index).value;
    	var price=document.getElementById("total"+index).innerHTML;
    	var car_id=document.getElementById("car_id"+index).value;
    	var buser_id=document.getElementById("buser_id"+index).value;
    	var username=document.getElementById("username"+index).innerHTML;
    	if(username=="niming"){
    		alert("请先登录！");
    	}else{
    		 $.post(
    		"tijiao.do",
    		{"phonename":phonename,"number":number,"price":price,"car_id":car_id,"buser_id":buser_id},
    		function(data){
    			if(data=="1"){
    			alert("提交成功！");
    			location.href="../gouwuche/gouwuche.do"; 
    			}
    			if(data=="0"){
    				alert("库存不足！");
    			}
    		}
    		
    		);
    	}
   
    
   
     }



        
</script>
    <style type="text/css">   
        html,body{font-size:12px;margin:0px;height:100%;}   
        .mesWindow{border:#666 1px solid;background:#fff;}   
        .mesWindowTop{border-bottom:#eee 1px solid;margin-left:4px;padding:3px;font-weight:bold;text-align:left;font-size:12px;}   
        .mesWindowContent{margin:4px;font-size:12px;}   
        .mesWindow .close{height:25px;width:35px;border:none;cursor:pointer;text-decoration:underline;background:#fff}   
    </style>
    
   

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
  <div class="main" >
   
  
    
    <div style="margin:0 auto;width:400px;">
         <img src="../front-images/gouwuche.png" style="height: 100px;width:400px;"/>
    </div>
    
    <div style=" width:970px;">
        <table  id="tab" width="970px" style="border:1px solid #1999fe; border-spacing:0px;">
          <tr height="30px" >
               <td colspan="7" style=" background-image:url('../front-images/bg1.jpg');"></td>
          </tr>
           <tr align="center">
               <td style="border:1px solid #1999fe;width:150px;">商品名称</td>
               <td style="border:1px solid #1999fe;width:100px;">商家名</td>
               <td style="border:1px solid #1999fe;width:350px;">商品详情</td>
               <td style="border:1px solid #1999fe;width:100px;">单价</td>
               <td style="border:1px solid #1999fe;width:100px;">数量</td>
               <td style="border:1px solid #1999fe;width:100px;">总价</td>
               <td style="border:1px solid #1999fe;width:200px;"><span style="font-size:16px;">编辑</span></td>
           </tr>
           <c:forEach items="${carlist}" var="c" varStatus="var">
           <tr align="center" >
               <td style="border:1px solid #1999fe;width:150px;" id="phonename${var.index}">${c.phonename}</td>
               <td style="border:1px solid #1999fe;width:100px;" id="username${var.index}">${c.busername}</td>
               <td style="border:1px solid #1999fe;width:350px;">cpu型号：${c.cpu};
                                                        		  内存容量:${c.memery};
                                                        		  屏幕尺寸:${c.chicun};
                                                        		 后置摄像头:${c.behind}</td>
               <td style="border:1px solid #1999fe;width:100px;" > 
                   <span class='price'  id="price${var.index}">${c.phone_price}</span>
               </td>
               <td style="border:1px solid #1999fe;width:100px;">
                   <input type="hidden" id="buser_id${var.index}" value="${c.buser_id}">
                   <input type="hidden" id="car_id${var.index}" value="${c.car_id}">
                   <input  type="hidden" id="changdu" value="${fn:length(carlist)}" /> 
                   <input class='min' type='button' value='-' /> 
                   <input id="input${var.index}" class='text_box' type='text' size='1' value='${c.car_number}' /> 
                   <input class='add'  type='button' value='+'/> 
               </td>
               <td style="border:1px solid #1999fe;width:100px;">
                   <label id="total${var.index}"></label>
               </td>
               <td style="border:1px solid #1999fe;width:200px;" >
                    <a  href="#" onclick="shanchu(${c.car_id});"><img style="width:60px;" src="../front-images/删除.png"/></a>
                    <a href="#" onclick="tijiao(${var.index});"><img style="width:60px;" src="../front-images/提交订单.jpg"/></a>
               </td>
           </tr>
           </c:forEach>

         <tr>
             <td colspan="7" align="center">
                 <!--分页-->
                <div id="pages">
               <!-- 如果当前页是第一页，不能点上一页 -->
               <c:choose>
                	<c:when test="${carPage.currentPage==1}">
        	        <a href="#">上一页</a>
        	        </c:when>
        	        <c:otherwise>
                			<a href="../gouwuche/gouwuche.do?currentPage=${carPage.currentPage-1}">上一页</a>
                	</c:otherwise>
                </c:choose>
        	     <!-- 循环输出页面，从1开始到 totalPage结束-->   
                  <c:forEach begin="1" end="${carPage.totalPage}" var="p">
                    <!-- 如果是当前页有样式，否则为没有样式 -->
                     <c:choose>
                         <c:when test="${p==carPage.currentPage}">
                             <a href="../gouwuche/gouwuche.do?currentPage=${p}" class="current_page">${p}</a>
                         </c:when>
                         <c:otherwise>
                              <a href="../gouwuche/gouwuche.do?currentPage=${p}">${p}</a>
                         </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  
                  <!--  如果当前页是最后一页，不能点下一页 -->
                  <c:choose>
                    <c:when test="${carPage.currentPage==carPage.totalPage}">
                       <a href="#">下一页</a>
                    </c:when>
                    <c:otherwise>
                       <a href="../gouwuche/gouwuche.do?currentPage=${carPage.currentPage+1}">下一页</a>
                    </c:otherwise>
                  </c:choose>
                </div>    
                <!-- 分页 --> 
              </td>
           </tr>
           
           <tr>
             <td colspan="7" >
                 <div style="float:right; margin-right:20px;">
                  <a href="../front/front.do">   <img style="width:100px;" src="../front-images/去购物.png"/> </a>          
                 </div>
              </td>
           </tr>
           
           <tr>
             <td colspan="7" style="background-image:url('../front-images/bg2.jpg')">
                 <div style="margin-left:400px;width:330px;">
                   <span style="color:blue; font-weight:bold;">总价：￥</span>
                   <span style="color:blue; font-weight:bold;" id="zongjia"></span>                
                 </div>
              </td>
           </tr>

        </table>     
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
<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>物品</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/meun.js" type="text/javascript"></script>
<script src="../js/jquery-1.6.1.min.js" type="text/javascript"></script>
<script src="../js/jquery-1.4.3.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.js"></script>
<link rel="stylesheet" href="../css/slide.css">
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<!-- 图片的翻滚 -->
<style>
		.ck-slide { width:100%; height: 200px; margin: 0 auto;}
		.ck-slide ul.ck-slide-wrapper { height: 200px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
		$(".div2").click(function(){ 
			$(this).next("div").slideToggle("slow")  
			.siblings(".div3:visible").slideUp("slow");
		});
	});



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


<script type="text/javascript">



    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }
     
     
   function delete1(po_id){
	   $.post(
		   "deletewupin.do",
		   {"po_id":po_id},
		   function(data){
			   if(data=="1"){
				   alert("删除成功！");
				   location.href="../wupin/wupin.do";
			   }
		   }
		   );
	   
	
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
      <h2><a href="../problem/problem.do">问题反馈</a></h2>
      
    </div>
     <div id="menu6"  class="menusel" style="margin-left:20px;">
      <h2><a href="../shoucang/shoucang.do">收藏</a></h2>
    </div>
  </div>
  
  
  <div class="main" >
    <div class="left">
       <div class="div1">
          <div class="div2">
              <div class="jbsz"> </div>
                  全部订单
          </div>
          <div class="div3">
            <ul>
		      <li> <a href="../wupin/yiwancheng.do">已完成订单</a></li>
		      <li> <a href="../wupin/weifukuan.do">未付款订单</a></li>
              <li> <a href="../wupin/weifahuo.do">未发货订单</a></li>
            </ul>
          </div>
       </div>
    </div>

    <div style="width:867px;float:left;margin-left:10px;margin-top:10px;background-color:#d5d3d3;border:1px solid #c5c5c5" >
        <table align="center" style="height:50px;">
           <tr>
              <td style="width:50px;" align="center">
                 <input type="checkbox" name="quanxuan"/>
                 <span style="font-size:14px;">全选</span>
              </td>
              <td style="width:100px;" align="center">
                 <span style="font-size:14px;"> 物品</span>
              </td>
              <td style="width:200px;" align="center">
                 <span style="font-size:14px;"> 物品详情</span>
              </td>
              <td style="width:50px;" align="center">
                  <span style="font-size:14px;">数量</span>   
              </td>
              <td style="width:100px;" align="center">
                 <span style="font-size:14px;">单价（元）</span>   
              </td>
              <td style="width:100px;" align="center">
                <span style="font-size:14px;">付款状态</span>   
              </td>
              <td style="width:100px;" align="center">
                <span style="font-size:14px;">发货状态</span>   
              </td>
           <td style="width:100px;" align="center">
                <span style="font-size:14px;">商品操作</span>   
              </td>
           </tr>
        </table> 
    </div>
   
   
   <c:forEach items="${frontpo}" var="po" varStatus="status">
   <!-- 一件物品 --> 
    <div  style="width:867px;float:left;margin-left:10px;margin-top:10px;border:1px solid #c5c5c5;" onmouseover="this.style.border='1px solid #8d8b8b'" onmouseout="this.style.border='1px solid #c5c5c5'">
       <div style="float:left;width:867px;height:30px;background-color:#d5d3d3;">
         <div style="float:left;margin-left:20px;margin-top:9px;">
            <input type="checkbox" name="xuanze"/>
         </div>
         <div style="float:left;margin-top:7px;margin-left:20px;">
                                  订单号：<span>${po.po_bianhao}</span>
         </div>
         <div style="float:right;margin-top:7px;margin-right:20px;">
            <a href="javascript:delete1(${po.po_id});"> <img title="删除" src="../front-images/lajixiang.jpg" /></a>
         </div>
       </div>
       <div>
         <table style="height:50px;margin-left:20px;">
            <tr>
               <td style="width:100px;" align="center">
                 <a href="#"> <span style="font-size:14px;">${po.phonename}</span> </a>
               </td>
               <td style="width:200px;" align="center">
                  <span style="font-size:14px;">cpu:${po.cpu};memery:${po.memery}</span>     
               </td>
               <td style="width:50px;" align="center">
                  <span style="font-size:14px;">${po.po_number}</span> 
               </td>
               <td style="width:100px;" align="center">
                  <span style="font-size:14px;">${po.po_price}</span>
               </td>
               <td style="width:100px;" align="center">
                  <span style="font-size:14px;">${po.fukuan}</span>
               </td>
               <td style="width:100px;" align="center">
                  <span style="font-size:14px;">${po.fahuo}</span>
               </td>
               <td style="width:100px;" align="center">
                  <a  href="#"><span style="font-size:14px;color:red;">${po.tuihuo}</span></a>
               </td>
            </tr>
         </table>
       </div>
    </div>
    <!-- 一件物品 -->    
    </c:forEach> 
    
    
    
    
    
               
         <!--分页-->
                <div id="pages" style="margin-left:150px;">
               <!-- 如果当前页是第一页，不能点上一页 -->
               <c:choose>
                	<c:when test="${frontpoPage.currentPage==1}">
        	        <a href="#">上一页</a>
        	        </c:when>
        	        <c:otherwise>
                			<a href="../wupin/wupin.do?currentPage=${frontpoPage.currentPage-1}">上一页</a>
                	</c:otherwise>
                </c:choose>
        	     <!-- 循环输出页面，从1开始到 totalPage结束-->   
                  <c:forEach begin="1" end="${frontpoPage.totalPage}" var="p">
                    <!-- 如果是当前页有样式，否则为没有样式 -->
                     <c:choose>
                         <c:when test="${p==frontpoPage.currentPage}">
                             <a href="../wupin/wupin.do?currentPage=${p}" class="current_page">${p}</a>
                         </c:when>
                         <c:otherwise>
                              <a href="../wupin/wupin.do?currentPage=${p}">${p}</a>
                         </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  
                  <!--  如果当前页是最后一页，不能点下一页 -->
                  <c:choose>
                    <c:when test="${frontpoPage.currentPage==frontpoPage.totalPage}">
                       <a href="#">下一页</a>
                    </c:when>
                    <c:otherwise>
                       <a href="../wupin/wupin.do?currentPage=${frontpoPage.currentPage+1}">下一页</a>
                    </c:otherwise>
                  </c:choose>
                </div>
             <!-- 分页 -->

    
    
    
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
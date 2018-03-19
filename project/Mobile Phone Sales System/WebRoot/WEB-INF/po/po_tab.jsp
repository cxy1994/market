<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE3 {font-size: 12px; font-weight: bold; }

-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function del(po_id)
{
var agree=confirm("确定要删除以上记录吗 ?");

          if (agree)
          {
        	  location.href="../po/deletepo.do?po_id="+po_id; 
              return true;
          }else{
              return false;
          }
} 
function updatefukuan(po_id,index){
	 
         var fukuan=document.getElementById("fukuan"+index).innerHTML;
           if(fukuan=="未付款"){
        	  var agree=confirm("确定要手动付款么?");
             if (agree){
        	     location.href="../po/updatefukuan.do?po_id="+po_id+"&fukuan="+fukuan; 
                       return true;
              }else{
                   return false;
                    }
          }
          if(fukuan=="已付款"){
        	  var agree=confirm("确定要取消付款么?");
        	  if (agree){
        	      location.href="../po/updatefukuan.do?po_id="+po_id+"&fukuan="+fukuan; 
                       return true;
              }else{
                   return false;
                    }
        	  
          }
}
function updatefahuo(po_id,index){
	 var fahuo=document.getElementById("fahuo"+index).innerHTML;
	 var fukuan=document.getElementById("fukuan"+index).innerHTML;
	 if(fahuo=="未发货"){
	      var agree=confirm("确定要发货?");

          if (agree)
          {
        	  if(fukuan=="已付款"){
        	  location.href="../po/updatefahuo.do?po_id="+po_id+"&fahuo="+fahuo; 
        	  return true;
        	  }
        	  else{
        		  alert("请先付款!");
        	  }
              
          }else{
              return false;
          }
      }
	 if(fahuo=="已发货"){
		   var agree=confirm("确定取消发货?");

          if (agree)
          {
        	  location.href="../po/updatefahuo.do?po_id="+po_id+"&fahuo="+fahuo; 
              return true;
          }else{
              return false;
          }
	 }
}
function updatetuihuo(po_id,index){
     var tuihuo=document.getElementById("tuihuo"+index).innerHTML;
     if(tuihuo=="无退货"){
    	 var agree=confirm("确定要退货?");

          if (agree)
          {
        	  location.href="../po/updatetuihuo.do?po_id="+po_id+"&tuihuo="+tuihuo; 
              return true;
          }else{
              return false;
          }
     }
      if(tuihuo=="正在退货"){
    	 var agree=confirm("确定取消退货?");

          if (agree)
          {
        	  location.href="../po/updatetuihuo.do?po_id="+po_id+"&tuihuo="+tuihuo; 
              return true;
          }else{
              return false;
          }
     }
	
}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" style="background-image:url('../images/tab_05.gif')"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" style="font-size: 12px"><span style="font-size: 12px; font-weight: bold;">你当前的位置</span>：[订单管理]-[订单查询]</td>
              </tr>
            </table></td>
              
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" style="background-image:url('../images/tab_12.gif')">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            
            <td width="3%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">序号</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">订单编号</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">商品名</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">用户名</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">联系方式</span></div></td>
            <td width="20%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">地址</span></div></td>
            <td width="4%" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">数量</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">总价</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">付款状态</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">发货状态</span></div></td>
            <td width="8%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">退货状态</span></div></td>
            <td width="35%" height="22" style="background-image:url('../images/bg.gif')" bgcolor="#FFFFFF" style="font-size: 12px"><div align="center">基本操作</div></td>
          </tr>
          <c:forEach items="${polist}" var="po" varStatus="status">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center" style="font-size: 12px">
              <div align="center">${po.po_id}</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.po_bianhao}</span></div></td>    
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.phonename}</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.username}</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.telephone}</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.address}</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.po_number}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${po.po_price}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><a href="javascript:updatefukuan(${po.po_id},${status.index});"><span style="font-size: 12px" id="fukuan${status.index}" >${po.fukuan}</span> </a></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><a href="javascript:updatefahuo(${po.po_id},${status.index});"><span style="font-size: 12px" id="fahuo${status.index}">${po.fahuo}</span> </a></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><a href="javascript:updatetuihuo(${po.po_id},${status.index});"><span style="font-size: 12px"  id="tuihuo${status.index}">${po.tuihuo}</span> </a></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="color: #03515d; font-size: 12px;"><img src="../images/edt.gif" width="16" height="16" /><span style="cursor:pointer;" onclick="location.href='../po/update.do?po_id='+${po.po_id}">编辑</span>&nbsp;&nbsp;<img src="../images/del.gif" width="16" height="16" /><span style="cursor:pointer;" onclick="del(${po.po_id});">删除</span></span></div></td>
           </tr>
          </c:forEach>
         


        </table></td>
        <td width="8" style="background-image:url('../images/tab_15.gif')">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" style="background-image:url('../images/tab_19.gif')"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /></td>
        <td align="center">
            
               <!--分页-->
                <div id="pages">
               <!-- 如果当前页是第一页，不能点上一页 -->
               <c:choose>
                	<c:when test="${poPage.currentPage==1}">
        	        <a href="#">上一页</a>
        	        </c:when>
        	        <c:otherwise>
                			<a href="../po/po.do?currentPage=${poPage.currentPage-1}">上一页</a>
                	</c:otherwise>
                </c:choose>
        	     <!-- 循环输出页面，从1开始到 totalPage结束-->   
                  <c:forEach begin="1" end="${poPage.totalPage}" var="p">
                    <!-- 如果是当前页有样式，否则为没有样式 -->
                     <c:choose>
                         <c:when test="${p==poPage.currentPage}">
                             <a href="../po/po.do?currentPage=${p}" class="current_page">${p}</a>
                         </c:when>
                         <c:otherwise>
                              <a href="../po/po.do?currentPage=${p}">${p}</a>
                         </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  
                  <!--  如果当前页是最后一页，不能点下一页 -->
                  <c:choose>
                    <c:when test="${poPage.currentPage==poPage.totalPage}">
                       <a href="#">下一页</a>
                    </c:when>
                    <c:otherwise>
                       <a href="../po/po.do?currentPage=${poPage.currentPage+1}">下一页</a>
                    </c:otherwise>
                  </c:choose>
                </div>
        
        
        </td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

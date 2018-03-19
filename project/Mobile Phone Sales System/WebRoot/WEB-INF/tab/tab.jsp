<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>

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

function del(phone_id)
{
var agree=confirm("确定要删除以上记录吗 ?");

          if (agree)
          {
        	 location.href="../main/deletemain.do?phone_id="+phone_id; 
            return true;
          }else{
              return false;
          }
} 
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" style="font-size: 12px"><span style="font-size: 12px; font-weight: bold;">你当前的位置</span>：[商家管理]-[产品查询]</td>
              </tr>
            </table>
            </td>
            
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
          
            <td width="3%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">序号</span></div></td>
            <td width="8%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">产品编号</span></div></td>
            <td width="12%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">商家编号</span></div></td>
            <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">商品类别</span></div></td>
            <td width="14%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">商品名称</span></div></td>
            <td width="18%" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">产品数量</span></div></td>
            <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">产品单价</span></div></td>
            <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">产品图片</span></div></td>
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF" style="font-size: 12px"><div align="center">基本操作</div></td>
          </tr>
          <c:forEach items="${phonelist}" var="p" varStatus="status">
	          <tr>
	            <td height="20" bgcolor="#FFFFFF"><div align="center" style="font-size: 12px">
	              <div align="center">${status.count}</div>
	            </div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${p.phone_id}</span></div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${p.buser_id}</span></div></td>
	            <td  height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">
	            <c:choose>
	            <c:when test="${p.fenlei=='1'}">
	                                                      手机
	            </c:when>
	            <c:when test="${p.fenlei=='2'}">
	            	  服饰
	            </c:when>
	            <c:when test="${p.fenlei=='3'}">
	            	  酒类
	            </c:when>
	            <c:when test="${p.fenlei=='4'}">
	            	  电器
	            </c:when>
	            <c:when test="${p.fenlei=='5'}">
	            	  化妆品
	            </c:when>
	            <c:when test="${p.fenlei=='6'}">
	            	  生活用品
	            </c:when>
	            </c:choose>
	            </span></div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${p.phonename}</span></div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${p.phone_number}</span></div></td>
	             <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${p.phone_price}</span></div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px" >${p.picture}</span></div></td>
	            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="color: #03515d; font-size: 12px;"><img src="../images/edt.gif" width="16" height="16" /><span style="cursor:pointer;"  onclick="location.href='../main/updatemain.do?phone_id=${p.phone_id}';">编辑</span>&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" /><span style="cursor:pointer;" onclick="del(${p.phone_id});">删除</span></span></div></td>
	          </tr>
          </c:forEach>   
 



          
         


        </table></td>
        <td width="8" background="../images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /></td>
        <td align="center">   
                 <!--分页-->
                <div id="pages">
               <!-- 如果当前页是第一页，不能点上一页 -->
               <c:choose>
                	<c:when test="${phonePage.currentPage==1}">
        	        <a href="#">上一页</a>
        	        </c:when>
        	        <c:otherwise>
                			<a href="../main/main.do?currentPage=${phonePage.currentPage-1}">上一页</a>
                	</c:otherwise>
                </c:choose>
        	     <!-- 循环输出页面，从1开始到 totalPage结束-->   
                  <c:forEach begin="1" end="${phonePage.totalPage}" var="p">
                    <!-- 如果是当前页有样式，否则为没有样式 -->
                     <c:choose>
                         <c:when test="${p==phonePage.currentPage}">
                             <a href="../main/main.do?currentPage=${p}" class="current_page">${p}</a>
                         </c:when>
                         <c:otherwise>
                              <a href="../main/main.do?currentPage=${p}">${p}</a>
                         </c:otherwise>
                     </c:choose>
                  </c:forEach>
                  
                  <!--  如果当前页是最后一页，不能点下一页 -->
                  <c:choose>
                    <c:when test="${phonePage.currentPage==phonePage.totalPage}">
                       <a href="#">下一页</a>
                    </c:when>
                    <c:otherwise>
                       <a href="../main/main.do?currentPage=${phonePage.currentPage+1}">下一页</a>
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

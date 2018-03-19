<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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

function del(user_id)
{
var agree=confirm("确定要删除以上记录吗 ?");

          if (agree)
          {
        	  location.href="../admin/delete_user.do?user_id="+user_id;
         return true;
          }else{
              return false;
          }
} 

function reset(user_id)
{
	var agree=confirm("确定要重置密码么？");
	if(agree)
		{
		    location.href="../admin/reset_user.do?user_id="+user_id;
		   return true;
		}
	else{
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
                <td width="95%" style="font-size: 12px"><span style="font-size: 12px; font-weight: bold;">你当前的位置</span>：[管理中心]</td>
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
            <td width="8%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">用户编号</span></div></td>
            <td width="14%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">用户名</span></div></td>
            <td width="10%" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">手机号</span></div></td>
            <td width="30%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">地址</span></div></td>
            <td width="5%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">性别</span></div></td>
            <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">邮箱</span></div></td>
            <td width="5%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">真实姓名</span></div></td>
            <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF" style="font-size: 12px"><div align="center">基本操作</div></td>
          </tr>
          
          <c:forEach items="${us}" var="us" varStatus="status">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center" style="font-size: 12px">
              <div align="center">${status.count}</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.user_id}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.username}</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.telephone}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.address}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.sex}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.email}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">${us.realname}</span></div></td>
            <td height="20" bgcolor="#FFFFFF">
                <div align="center">
                  <span style="color: #03515d; font-size: 12px;">
                     <span style="cursor:pointer;" onclick="del(${us.user_id});">删除</span>
                     <span style="cursor:pointer;" onclick="reset(${us.user_id});">密码重置</span>
                  </span>
                </div>
            </td>
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
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td style="color: #03515d; font-size: 12px;">&nbsp;&nbsp;共有 120 条记录，当前第 1/12 页</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"><img src="../images/first.gif" width="37" height="15" /></td>
                  <td width="45"><img src="../images/back.gif" width="43" height="15" /></td>
                  <td width="45"><img src="../images/next.gif" width="43" height="15" /></td>
                  <td width="40"><img src="../images/last.gif" width="37" height="15" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

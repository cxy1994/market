<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>销售管理系统_管理员登录</title>
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
  


<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE2 {font-size: 9px}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
}

</style>
<style> 
.navPoint { 
COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
} 
</style> 

<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>

<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>
<script>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="images/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="images/main_48.gif";
}
}

</script>

<script>
function switchSysBar(){ 
var locate=location.href.replace('middel.html','');
var ssrc=document.all("img1").src.replace(locate,'');
if (ssrc=="images/main_55.gif")
{ 
document.all("img1").src="../images/main_55_1.gif";
document.all("frmTitle").style.display="none" 
} 
else
{ 
document.all("img1").src="../images/main_55.gif";
document.all("frmTitle").style.display="" 
} 
} 


function switchSysBar1(){ 
var locate=location.href.replace('middel.html','');
var ssrc=document.all("img1").src.replace(locate,'');
if (ssrc=="images/main_55.gif")
{ 
document.all("img1").src="../images/main_55_1.gif";
document.all("frmTitle").style.display="none" 
} 
else
{ 
document.all("img1").src="../images/main_55.gif";
document.all("frmTitle").style.display="" 
} 
} 

function tuichu(){
	location.href="../main/tuichu.do";
}
</script>


</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="../images/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="../images/main_03.gif">&nbsp;</td>
            <td width="505" background="../images/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="../images/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="../images/main_09.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                     <td width="50" height="19"><div align="center"><img src="../images/main_12.gif" width="49" height="19" onclick="location.href='../main/main.do'" style="cursor: pointer;"></div></td>
                    
                    <td width="50"><div align="center"><img src="../images/main_20.gif" width="48" height="19" onclick="tuichu();" style="cursor: pointer;"></div></td>
                    <td width="26"><div align="center"><img src="../images/main_21.gif" width="26" height="19"></div></td>
                    <td width="100"><div align="center"><img src="../images/main_22.gif" width="98" height="19" onclick="location.href='../busers/busers.do'" style="cursor: pointer;"></div></td>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
      
              </tr>
            </table></td>
            <td width="21"><img src="../images/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="../images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="../images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="../images/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="../images/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="../images/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户：${buser.busername}</div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
                    <td width="220" valign="bottom"  nowrap="nowrap"><div align="right"><span class="STYLE3"><span class="STYLE3">■</span> 今天是：
 <% Calendar calendar=Calendar.getInstance(); 		                 
		                 int year=calendar.get(Calendar.YEAR); 
		                 int month=calendar.get(Calendar.MONTH)+1; 
		                 int day=calendar.get(Calendar.DATE); 
		                 String date=year+"年"+month+"月"+day+"日";
		                 out.println(date);  %>
		                 </span></div></td>
    
            
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="21"><img src="../images/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td>
    
    <!-- middle -->
      <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td width="171" id=frmTitle noWrap name="fmTitle" align="center" valign="top"><table width="171" height="100%" 

border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
      <tr>
        <td  bgcolor="#1873aa" style="width:6px;">&nbsp;</td>
        <td width="165">
        
        
   <!-- left -->    
<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="../images/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="../images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">商家管理</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/main_51.gif" id="submenu1">
			 <div class="sec_menu" >  
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="16%" height="25"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" onclick="location.href='../main/main.do';">商家产品查询</span></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" onclick="location.href='../main/addmain.do';">商家产品增加</span></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20"  style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" onclick="location.href='../busers/busers.do';">商家个人中心</span></td>
                        </tr>
                    </table></td>
                  </tr>
                  
                </table></td>
              </tr>
              <tr>
                <td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table></div></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="../images/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">订单管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/main_51.gif" id="submenu2">
            <div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                       
                        <tr>
                          <td width="16%" height="25">
                            <div align="center">
                              <img src="../images/left.gif" width="10" height="10" />
                            </div>
                          </td>
                          <td width="84%" height="23">
                             <table width="95%" border="0" cellspacing="0" cellpadding="0">
                               <tr>
                                 <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" onclick="location.href='../po/po.do';">订单查询</span></td>
                               </tr>
                             </table>
                          </td>
                        </tr>
                        
                   
                        
                        
                       
                        
                        
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div>
            </td>
          </tr>
        </table>          </td>
      </tr>
 
 
     <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="../images/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">信息反馈管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="../images/main_51.gif" id="submenu3" style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="../images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'" onclick="location.href='../problem/fankui.do';"><span class="STYLE3">反馈信息</span></td>
                              </tr>
                          </table></td>
                        </tr>
        
                        
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>



    </table></td>
  </tr>
  <tr>
    <td height="18" background="../images/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：2008V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
        
        
        </td>
      </tr>
    </table>		
    </td>
    <td width="6"  style="width:6px;"valign="middle" bgcolor="1873aa" onclick=switchSysBar1()><SPAN class=navPoint 
id=switchPoint title=关闭/打开左栏><img src="../images/main_55.gif" name="img1" width=6 height=40 id=img1></SPAN></td>
    <td width="100%" align="center" valign="middle" >
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
                <td width="95%" style="font-size: 12px"><span style="font-size: 12px; font-weight: bold;">你当前的位置</span>：[商家管理]-[商品详情]</td>
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
        <td align="center">
          <table style="margin-top:100px;margin-bottom:100px;" width="50%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            
            <td colspan="8" width="3%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span style="font-size: 12px">商品详情</span></div></td>
            
          </tr>
          <tr>
    
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">商品名称</span></div></td>
            <td height="40" bgcolor="#FFFFFF" >
               <div align="center">
                 <span style="font-size: 12px">
                     ${phone.phonename}
                 </span>
               </div>
            </td>

          </tr>
          
          <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">屏幕尺寸</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.chicun}</span></div></td>
              
          </tr>
          <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">主屏分辨率</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.fenbianlv}</span></div></td>
              
          </tr>
           <tr>
    
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">前置摄像头</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.front}</span></div></td>

          </tr>
          
          <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">后置摄像头</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.behind}</span></div></td>
              
          </tr>
          <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">CPU型号</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.cpu}</span></div></td>
              
          </tr>
           <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">内存容量</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.memery}</span></div></td>
              
          </tr>
           <tr>         
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">参考图片</span></div></td>
            <td height="40" bgcolor="#FFFFFF" ><div align="center"><span style="font-size: 12px">${phone.picture}</span></div></td>
              
          </tr>  
            <tr>         
              <td height="40" bgcolor="#FFFFFF" colspan="2">
                 <div align="center">
                   <input type="image" src="../images/button_12.png" value="确定" onclick="location.href='../main/main.do'"/>
                  
               </div>
            </td>
              
          </tr>
        </table>
        
        </td>
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
           
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>

    
    
   
 

    </td>
    <td width="6" bgcolor="#1873aa" style=" width:6px;">&nbsp;</td>
  </tr>
</table>

</body>
</html>

<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>烽火手机商城</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
<script type="text/javascript" src="../js/jquery-1.6.1.min.js"></script>
<script type="text/javascript">
    function onmouseover1( ){
    	
        var pele=document.getElementById("table1");
         pele.setAttribute("bgcolor","#cccccc");
        
    }
     function onmouseout1( ){
    	
        var pele=document.getElementById("table1");
         pele.removeAttribute("bgcolor");
    }
     
     
     

    $(function(){  
		 for(var x = 1; x < 8; x++)
		 {
			
			 var menuid = document.getElementById("menu"+x);
			 menuid.num = x;
			 type();
		}
		 }) 

function type()
{
    		 alert("111");
var menuh2 = menuid.getElementsByTagName("h2");
var menuul = menuid.getElementsByTagName("ul");
var menuli = menuul[0].getElementsByTagName("li");
menuh2[0].onmouseover = show1();
menuh2[0].onmouseout = unshow1();
menuul[0].onmouseover = show1();
menuul[0].onmouseout = unshow1();
function show1()
{
	alert("show");
menuul[0].className = "clearfix typeul block"
}
function unshow1()
{
	alert("unshow");
menuul[0].className = "typeul"
}
for(var i = 0; i < menuli.length; i++)
 {
 menuli[i].num = i;
 var liul = menuli[i].getElementsByTagName("ul")[0];
  if(liul)
  {
  typeshow()
  }
 }
function typeshow()
{
menuli[i].onmouseover = showul();
menuli[i].onmouseout = unshowul();
}
function showul()
{
menuli[this.num].getElementsByTagName("ul")[0].className = "block";
}
function unshowul()
{
menuli[this.num].getElementsByTagName("ul")[0].className = "";
}
}


     
   
</script>


</head>

<body>
<div class="zhong">
  <div class="top">
    <div class="top_left">Logo</div>
    <div class="top_right">
      <div class="top_right_1"><a href="#">设为首页</a>　|　<a href="#">加入收藏</a>　|　

<a href="#">繁體中文</a></div>
      <div class="top_right_2"><img src="../front-images/img_1.gif" /></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="banner"><img src="../front-images/img_2.gif" /></div>
  <div class="menu">
    <div class="menusel" style="width:95px;border:1px solid red;">
      <h2><a href="index.html">首页</a></h2>
    </div>
    <div id="menu1" class="menusel" style="border:1px solid red;">
      <h2><a href="#">了解我们</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="#">公司简介</a></li>
          <li><a href="#">企业文化</a></li>
          <li class="lli"><a href="#">联系我们</a></li>
        </ul>
      </div>
    </div>
    <div id="menu2" class="menusel"  style="border:1px solid red;">
      <h2><a href="xiangqing.html">软件介绍</a></h2>
      <div class="position">
        <ul class="clearfix typeul">

        </ul>
      </div>
    </div>
    <div id="menu3" class="menusel"  style="border:1px solid red;">
      <h2><a href="xinwen.html">新闻信息</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="xinwen.html">行业新闻</a></li>
          
        </ul>
      </div>
    </div>
    <div id="menu4" class="menusel"  style="border:1px solid red;">
      <h2><a href="#">下载中心</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li class="lli"><a href="#">我们的软件</a></li>
        </ul>
      </div>
    </div>
    <div id="menu5" class="menusel"  style="border:1px solid red;">
      <h2><a href="#">诚聘英才</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu6" class="menusel"  style="border:1px solid red;">
      <h2><a href="#">在线留言</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="#">发表留言</a></li>
          <li><a href="#">留言列表</a></li>
          <li><a href="#">留言</a></li>
          <li><a href="#">建议</a></li>
          <li class="lli"><a href="#">投诉</a></li>
        </ul>
      </div>
    </div>
    <div id="menu7" class="menusel"  style="border:1px solid red;">
      <h2><a href="#">论坛</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
  </div>
  <div class="main">
    <div class="left">
      <div class="box_1">
        <div class="left_title">会员中心</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="32%" height="37" valign="middle">用户名：</td>
            <td width="68%" valign="middle">
              <input type="text" name="textfield" id="textfield" class="input_1"/>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">密　码：</td>
            <td valign="middle">
              <input type="text" name="textfield2" id="textfield2" class="input_2"/>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">验证码：</td>
            <td valign="middle">
              <input type="text" name="textfield3" id="textfield3" class="input_3" 

style="float:left"/>
              <span style="float:left; margin-left:6px;"><img src="../front-images/img_7.gif" 

/></span></td>
          </tr>
          <tr>
            <td colspan="2">
              <input name="input" type="image" src="../front-images/img_4.gif" />
              <input name="input" type="image" src="../front-images/img_5.gif" style="margin:0 

10px;"/>
              <input name="input" type="image" src="../front-images/img_6.gif" />
            </td>
          </tr>
        </table>
      </div>
      <div class="box_1">
        <div class="left_title">本站公告</div>
        <div class="left_nr">
          <ul>
            <li><a href="#">滚动滚动滚动滚动</a></li>
            <li><a href="#">穿透内网文件传输</a></li>
            <li><a href="#">网络版本的个人资料库</a></li>
            <li><a href="#">强大的手机短信双向功能</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">产品分类</div>
        <div class="left_nr">
          <ul>
            <li><a href="#">WEB信息发布系列</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right">
      <div class="right_top_img"><img src="../front-images/img_3.gif" /></div>
      <img src="../front-images/img_8.gif" style="float:left"/>
      <div class="news">
        <div class="news_title"><span><img src="../front-images/title_1.gif" /></span><a 

href="#"><img src="../front-images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="xiangqing.html">Email行销的发展现状和意

义</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
        </table>
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
  <div class="bottom"> Email：123456@qq.com 联系电话：123456 QQ：123456<br />
    版权所有 2009-2010 <a href="http://www.mycodes.net" title="源码之家" target="_blank">

源码之家</a> </div>
</div>
<script src="js/meun.js" type="text/javascript"></script>
</body>

</html>
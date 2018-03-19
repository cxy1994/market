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

.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>

		<script>
var highlightcolor = '#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么
var clickcolor = '#51b2f6';
function changeto() {
	source = event.srcElement;
	if (source.tagName == "TR" || source.tagName == "TABLE")
		return;
	while (source.tagName != "TD")
		source = source.parentElement;
	source = source.parentElement;
	cs = source.children;
	//alert(cs.length);
	if (cs[1].style.backgroundColor != highlightcolor && source.id != "nc"
			&& cs[1].style.backgroundColor != clickcolor)
		for (i = 0; i < cs.length; i++) {
			cs[i].style.backgroundColor = highlightcolor;
		}
}

function changeback() {
	if (event.fromElement.contains(event.toElement)
			|| source.contains(event.toElement) || source.id == "nc")
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

function del()
{
var agree=confirm("确定要删除以上记录吗 ?");

          if (agree)
          {
         return true;
          }else{
              return false;
          }
} 
	

 //function change(value){
//	var selectedOption=value.options[value.selectedIndex].value;   
//	if(selectedOption==1){
//		document.getElementById('chicun').style.display = "";
//		document.getElementById('memery').style.display = "";
//		document.getElementById('cpu').style.display = "";
//		document.getElementById('fenbianlv').style.display = "";
//		document.getElementById('front').style.display = "";
//		document.getElementById('behind').style.display = "";
//	}else{
//		document.getElementById('chicun').style.display = "none";
//		document.getElementById('memery').style.display = "none";
//		document.getElementById('cpu').style.display = "none";
//		document.getElementById('fenbianlv').style.display = "none";
//		document.getElementById('front').style.display = "none";
//		document.getElementById('behind').style.display = "none";
//	}
// }


</script>

	</head>

	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="30" background="../images/tab_05.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="30">
								<img src="../images/tab_03.gif" width="12" height="30" />
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="46%" valign="middle">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="5%">
														<div align="center">
															<img src="../images/tb.gif" width="16" height="16" />
														</div>
													</td>
													<td width="95%" style="font-size: 12px">
														<span style="font-size: 12px; font-weight: bold;">你当前的位置</span>：[商家管理]-[产品增加]
													</td>
												</tr>
											</table>
										</td>

									</tr>
								</table>
							</td>
							<td width="16">
								<img src="../images/tab_07.gif" width="16" height="30" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="8" background="../images/tab_12.gif">
								&nbsp;
							</td>
							<td align="center">
								<form action="toaddmain.do" name="form1" method="post"
									enctype="multipart/form-data">
									<table style="margin-top: 100px; margin-bottom: 100px;"
										width="50%" border="0" cellpadding="0" cellspacing="1"
										bgcolor="b5d6e6" onmouseover="changeto()"
										onmouseout="changeback()">
										<tr>

											<td colspan="8" width="3%" height="22"
												background="../images/bg.gif" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px">商品增加</span>
												</div>
											</td>

										</tr>
								 
										<tr>
											<td>
												<div align="center";>
													<span style="font-size: 12px;">商品分类</span>
												</div>

											</td>
											<td>
												<div align="center">
													<span style="font-size: 12px;"> <select name="fenlei"
															style="width: 100px;" id="choose" >
															<option value="1" selected>
																手机
															</option>
															<option value="2">
																服饰
															</option>
															<option value="3">
																酒类
															</option>
															<option value="4">
																电器
															</option>
															<option value="5">
																化妆品
															</option>
															<option value="6">
																生活用品
															</option>
														</select> </span>
												</div>

											</td>

										</tr>
										<tr>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px">商品名称</span>
												</div>
											</td>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px"> <input type="text"
															name="phonename" style="width: 100px;" /> <input
															type="hidden" name="buser_id" value="${Buser.buser_id}" />
													</span>
												</div>
											</td>

										</tr>

										<tr>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px">商家价格</span>
												</div>
											</td>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px"><input type="text"
															name="phone_price" style="width: 100px;" /> </span>
												</div>
											</td>

										</tr>
										<tr>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px">商品数量</span>
												</div>
											</td>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px"><input type="text"
															name="phone_number" style="width: 100px;" /> </span>
												</div>
											</td>

										</tr>
											
										<tr>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<span style="font-size: 12px">图片的选择</span>
												</div>
											</td>
											<td height="40" bgcolor="#FFFFFF">
												<div align="center">
													<input type="file" name="fileUpload" />
												</div>
											</td>
										</tr>

										<tr>
											<td height="40" bgcolor="#FFFFFF" colspan="2">
												<div align="center">
													<input type="image" src="../images/button_12.png"
														value="确定" />
													<img src="../images/button_16.png"
														style="margin-left: 50px; cursor: pointer;"
														onclick="location.href='../main/main.do'" />
												</div>
											</td>
										</tr>
									</table>
								</form>
							</td>
							<td width="8" background="../images/tab_15.gif">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="35" background="../images/tab_19.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="35">
								<img src="../images/tab_18.gif" width="12" height="35" />
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>

									</tr>
								</table>
							</td>
							<td width="16">
								<img src="../images/tab_20.gif" width="16" height="35" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>

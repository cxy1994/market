<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>销售管理系统_管理员登录</title>
		<link href="../css/buser_register.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript" src="../js/jquery-1.4.3.js">
</script>

		<script language="javascript" type="text/javascript">
function checklogin() {
	var shenfenzheng = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
	var telephone = /^\d{11}$/;
	var busername = $("#busername").val();
	var buserpassword = $("#buserpassword").val();
	var busershenfenzheng = $("#busershenfenzheng").val();
	var busertelephone = $("#busertelephone").val();
	var flag = true;
	if (busername == "") {
		$("#user_error").text("*用户名不能为空！");
		flag = false;
	}
	if (buserpassword == "") {
		$("#password_error").text("*密码不能为空！");
		flag = false;
	}
	if (!shenfenzheng.test(busershenfenzheng)) {
		$("#shenfenzheng_error").text("*身份证格式错误!");
		flag = false;
	}
	if (!telephone.test(busertelephone)) {
		$("#telephone_error").text("*电话格式不对！");
		flag = false;
	}

	if (flag) {
		$.post("tozhuce.do", $("#form1").serialize(), function(data) {

			if (data == 1) {
				alert("注册成功！");
				location.href = "../login/login.do";
			}
		});

	}

}
</script>

	</head>

	<body>
		<div class="title">
			管理员登录
		</div>
		<div class="all">

			<div class="center_box">
				<div class="jiemian">
				</div>
				<div class="jiemian2">
					<form action="" id="form1" method="post">
						<table class="User">
							<tr>
								<td>
									用户名 ：
								</td>
								<td>
									<input type="text" class="inputText" id="busername"
										name="busername" />
								</td>
								<td>
									<span id="user_error" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td>
									<span style="letter-spacing: 1.1em;">密</span>码：
								</td>
								<td>
									<input type="text" class="inputText" id="buserpassword"
										name="buserpassword" />
								</td>
								<td>
									<span id="password_error" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td>
									身份证 ：
								</td>
								<td>
									<input type="text" class="inputText" id="busershenfenzheng"
										name="busershenfenzheng" />
								</td>
								<td>
									<span id="shenfenzheng_error" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td>
									<span style="letter-spacing: 1.1em;">电</span>话 ：
								</td>
								<td>
									<input type="text" class="inputText" id="busertelephone"
										name="busertelephone" />
								</td>
								<td>
									<span id="telephone_error" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="height: 70px" align="right">
									<input type="button" class="sub" id="sub" value="注 册"
										style="cursor: pointer;" onclick="checklogin();">
									<input type="button" class="sub" id="sub" value="取消"
										style="cursor: pointer;"
										onclick="location.href='../login/login.do'">
								</td>

							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="hiddenDiv"></div>
		</div>
	</body>
</html>

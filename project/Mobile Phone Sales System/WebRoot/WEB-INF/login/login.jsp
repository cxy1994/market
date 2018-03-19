<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>销售管理系统_管理员登录</title>
<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
  
 <script language="javascript" type="text/javascript">
function checklogin(){
              $.post(
                "tologin.do",
                $("#loginform").serialize(),
                function(data){
                    if(data==0)
                    {
                       $("#admin_code_error").text("没该用户");
                    }
                    else if(data==1){
                        $("#password_error").text("密码错误");
                    }
                    
                    else if(data==2){
                       location.href="../main/main.do";
                    }
                    else if(data==3){
                       location.href="../admin/admin.do";
                    }
                }
              );
    
            }

  function reset_msg(id,error){
                $("#"+id).text(error);
            }
</script>

<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}

</style></head>

<body>
<form action="" method="post" id="loginform">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0"  >
  <tr>
    <td  >
    <table width="962" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <td height="235" background="../images/login_03.gif"  >&nbsp;</td>
      </tr>
      <tr>
        <td height="53">
        <table width="100%" border="0" cellspacing="0" cellpadding="0"  >
          <tr  >
            <td   width="394"  height="53" background="../images/login_05.gif" >&nbsp;</td>
             <td   width="206" background="../images/login_06.gif">
             
             
              <table width="100%" border="0" cellspacing="0" cellpadding="0"  >
              <tr >
                <td width="16%" height="25" >
                   <div align="right">
                     <span class="STYLE1">用户</span>
                   </div>
                </td>
                <td width="57%" height="25" >
                  <div align="center" >
                    <input type="text" name="buser" id="buser" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff" onfocus="reset_msg('admin_code_error','');">
                  </div>
                </td>
                <td >
                   <span id="admin_code_error" style="font-size: 12px;color:red;" ></span>
                </td>
                         
              </tr>
              <tr >
                <td height="25" >
                   <div align="right">
                      <span class="STYLE1" >密码</span>
                   </div>
                </td>
                <td height="25" >
                   <div align="center" >
                     <input type="password" name="buser_password" id="buser_password" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff" onfocus="reset_msg('password_error','');">
                   </div>      
                </td>
                <td>
                   <span id="password_error" style="font-size: 12px;color:red;"></span>
                </td>
                
              </tr>
            </table>
           
            
            </td>
            <td   width="362"  background="../images/login_07.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr >
        <td height="213" background="../images/login_08.gif" valign="top" >
        <table style="margin-left: 400px;margin-top:0px;">

             <tr>
               
                <td height="25" colspan="3">
                  <div align="left" style="float:left;">
                    <a href="javascript:checklogin();"><img src="../images/dl.gif" width="49" height="18" border="0"></a>
                  </div>
                  <div align="center" style="float:left;margin-left:2px;" >
                    <a href="../login/zhuce.do"><img src="../images/zc.gif" width="98" height="18" border="0"></a>
                  </div>

                   <div align="left" style="float:left;margin-left:2px;">
                    <a href="../front/front.do"><img src="../images/qx.gif" width="49" height="18" border="0"></a>
                   </div>
               </td>
              </tr>

              
              
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</form>
</body>
</html>

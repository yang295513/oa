<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>岳阳移动OA系统登录</title>
<link href="/css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #f8f8f8;
}
-->
</style>
<script language="javascript">
function login()
{
	var name=document.getElementById("name").value;
	var pwd=document.getElementById("pwd").value;
	if(name==""){
			alert("请输入用户名称！");
			document.getElementById("name").focus();
			return false;
		}
	if(pwd==""){
			alert("请输入用户密码！");
			document.getElementById("pwd").focus();
			return false;
		}
	if(name=="admin" && pwd=="admin")
	{	
		location.href="index";
	  return true;
	}
}
</script>
</head>

<body>
<form name="form1" method="post">
<table width="100%" height="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div align="center">
      <p><br>
      </p>
      <table width="912" height="473" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td background="/images/login_pic.gif"><table width="100%" height="469" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="112">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="35%" height="52">&nbsp;</td>
              <td>&nbsp;</td>
              <td colspan="3" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="81"><font size="2">用户名称</font></td>
                  <td width="152"><input name="name" id="name" type="text" class="box" size="20"></td>
                  <td width="81"><font size="2">登录密码</font></td>
                  <td width="214"><input name="pwd" id="pwd" type="password" class="box" size="20">
                    <input name="Submit" type="button" class="buttonface" value="登 录" onClick="return login()"></td>
                  <td width="58">&nbsp;</td>
                </tr>
                <tr>
                  <td width="81"></td>
                  <td width="152"></td>
                  <td width="81"></td>
                  <td width="214" align="right"><input type="checkbox" id="cbox" name="cbox" value="1">
																记住用户名(一周)</td>
                  <td width="58">&nbsp;</td>
                </tr>
              </table></td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      </table>
      <p>&nbsp;      </p>
    </div></td>
  </tr>
</table>
</form>
</body>
</html>

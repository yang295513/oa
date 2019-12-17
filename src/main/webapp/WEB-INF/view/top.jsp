<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="/js/win_center.js"></script>
<script language="javascript">
function exitsys()
{
	var str=confirm('是否退出系统？');
	if(str==true)
	{
		parent.location.href="login";
	}
}
</script>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="/images/bg_top.jpg">
  <tr>
    <td width="40" height="58">&nbsp;</td>
    <td valign="middle"><img src="/images/logo.jpg"></td>
    <td align="right" valign="top"><table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="/images/hd_home.jpg" width="81" height="58" border="0" usemap="#Map"></td>
        <td><img src="/images/hd_member.jpg" width="69" height="58"></td>
        <td><img src="/images/hd_email.jpg" width="69" height="58" border="0" usemap="#Map2" onClick="exitsys()"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="/images/hd_nav_unsel.gif">
<form name="form1" method="post" action="">
  <tr>
    <td width="20" height="30">&nbsp;</td>
    <td class="F02"><img src="/images/person_header.jpg" width="9" height="31" align="absmiddle"> **移动公司 王小小 先生，您好！ </td>
    <td align="right" class="F02"><a href="PersonalSet/showsetl" class="a01" target="mainFrame">个人设置</a> ｜<a href="calendar/&#26085;&#31243;&#23433;&#25490;" target="mainFrame" class="a01">日程安排</a> ｜<a href="news/&#26032;&#38395;&#27983;&#35272;" target="mainFrame" class="a01">公司新闻</a> ｜<a href="PersonalSet/&#31449;&#20869;&#28040;&#24687;" target="mainFrame" class="a01">站内消息[2]</a></td>
    <td width="14" class="F02"></td>
  </tr>
</form>
</table>
<map name="Map">
  <area shape="rect" coords="20,6,55,55" href="main" target="mainFrame">
</map>
<map name="Map2">
  <area shape="rect" coords="8,6,60,54" href="#">
</map>
</body>
</html>

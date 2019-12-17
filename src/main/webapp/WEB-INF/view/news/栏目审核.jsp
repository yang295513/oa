<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻审核</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script>
function shenhe()
{
	var tg = confirm("是否审核当前新闻？");
	if(tg == true)
	{
		alert("确认审核！！！");
	}
	else
	{
		alert("取消审核！！！");
	}
}
</script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"> <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="2%" valign="middle" background="../../images/bg_03.gif">&nbsp;</td>
          <td width="2%" valign="middle" background="../../images/bg_03.gif"><img src="../../images/main_28.gif" width="9" height="9" align="absmiddle"></td>
          <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">栏目审核</font></div></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="">
    <br>
    <span class="td_form02"><span class="td_form01">
    </span></span>
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <tr>
        <td class="td_02">姓名</td>
        <td width="38%" class="td_02">
          <input name="textfield" type="text" class="input" style="width:99% " value="张三" readonly="true">
        </td>
        <td width="14%" class="td_02">部门</td>
        <td width="38%" class="td_02">
          <input name="textfield" type="text" class="input" style="width:99% " value="技术部" readonly="true">
        </td>
      </tr>
      <tr>
        <td class="td_02">上级栏目名称</td>
        <td class="td_02"><input name="textfield2" type="text" style="width:99%" value="娱乐新闻" readonly="true" >        </td>
        <td class="td_02">栏目名称</td>
        <td class="td_02"><input name="textfield3" type="text" style="width:99%" value="我猜" readonly="true" ></td>
      </tr>
      <tr>
        <td class="td_02">新闻标题</td>
        <td colspan="3" class="td_02">
          <input name="textfield" type="text" style="width:99% " value="我 猜"  readonly="true">
        </td>
      </tr>
      <tr>
        <td width="10%" class="td_02">关键词</td>
        <td colspan="3" class="td_02">
          <input name="textfield" type="text" style="width:99% " value="猜"  readonly="true">
        </td>
      </tr>
      <tr>
        <td class="td_02">新闻内容</td>
        <td colspan="3" class="td_02">
          <textarea name="textarea" style="width:99% " rows="10" readonly="true">bbbbbbbbbbbbbbbbbbbbbb</textarea>
        </td>
      </tr>
      <tr>
        <td class="td_02">审批结果</td>
        <td colspan="3" class="td_02">
          <select name="select" style="width:99% ">
            <option value="1">是</option>
            <option value="2" selected>否</option>
                    </select>
        </td>
      </tr>
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="td_page">
          <div align="center">
    <input name="Submit" type="submit" class="buttonface02" value="  确认审核  " onClick="shenhe()">
&nbsp;
    <input name="Submit" type="submit" class="buttonface02" value="  关   闭   " onClick="window.close()">
&nbsp;&nbsp; </div></td></tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><br>
    </p>
  </form>
</center>
</body>
</html>

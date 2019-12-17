<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>个人设置</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../js/util.js">
<SCRIPT language=JavaScript type=text/JavaScript>
function GetDate (nText)
{
	reVal = window.showModalDialog ("../time.jsp", '',
		"status:no;center:yes;scroll:no;resizable:no;help:no;dialogWidth:255px;dialogHeight:260px");
	if (reVal != null)
	{
		if (nText == 1)
			document.getElementById("beginTime").value = reVal;
		if (nText == 2)
			document.getElementById("endTime").value = reVal;
	}
}
</SCRIPT>
<style type="text/css">
<!--
.style1 {font-size: 14px}
-->
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="2%" valign="middle" background="../../images/bg_03.gif">&nbsp;</td>
          <td width="2%" valign="middle" background="../../images/bg_03.gif"><img src="../../images/main_28.gif" width="9" height="9" align="absmiddle"></td>
          <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">新闻维护</font></div></td>
        </tr>
    </table></td>
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <td width="79%" class="td_page style1">--<a href="新闻维护_普通查询.jsp">普通查询</a>--按时间查询--</td>
</table>
<form name="form1" method="post" action="">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" 

class="table01">
    <tr>
      <td colspan="4" class="td_02"><span class=td_title>新闻查询</span></td>
    </tr>
	

    <tr>
      <td width="10%" align="center" class="td_02">开始时间</td>
      <td width="40%" class="td_02"><input name="beginTime" id="beginTime" type="text" class="input" value="2008-10-10" size="15" maxlength="12" readonly="true" />
        <img src="../../images/search.gif" width="21" height="20" align="absmiddle" onclick="GetDate(1)" />
        <select name="select" class="input2">
          <option value="1">01</option>
          <option value="2">02</option>
          <option value="3">03</option>
          <option value="4">04</option>
          <option value="5">05</option>
          <option value="6">06</option>
          <option value="7">07</option>
          <option value="8" selected="selected">08</option>
          <option value="9">09</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
        </select>
点
<select name="select" class="input2">
  <option value="0" selected="selected">00</option>
  <option value="15">15</option>
  <option value="30">30</option>
  <option value="45">45</option>
</select>
分 </td>
      <td width="10%" align="center" class="td_02">结束时间</td>
      <td width="40%"><span class="td_02">
        <input name="endTime" id="endTime" type="text" class="input" value="2008-10-10" size="15" maxlength="12" readonly="true" />
        <img src="../../images/search.gif" width="21" height="20" align="absmiddle" onclick="GetDate(2)" />
        <select name="select2" class="input2">
          <option value="1">01</option>
          <option value="2">02</option>
          <option value="3">03</option>
          <option value="4">04</option>
          <option value="5">05</option>
          <option value="6">06</option>
          <option value="7">07</option>
          <option value="8">08</option>
          <option value="9">09</option>
          <option value="10" selected="selected">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
        </select>
        点
  <select name="select3" class="input2">
    <option value="0" selected="selected">00</option>
    <option value="15">15</option>
    <option value="30">30</option>
    <option value="45">45</option>
  </select>
      分</span></td>
    </tr>
    <tr>
      <td class="td_02" align="center">&nbsp;</td>
      <td class="td_02">&nbsp;</td>
      <td class="td_02" align="center">&nbsp;</td>
      <td class="td_02"><input name="Submit" type="button" class="buttonface02" 

value="  查询  " /></td>
    </tr>
  </table>
  <br>
        <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="td_page"><div align="right">
                <input name="Submit" type="submit" class="buttonface02" value="  删 除  " 

onClick="queding()">
               </div></td>
          </tr>
        </table>
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" 

class="table01">
       <tr>
        <td colspan="8" align="right" class="td07"><img src="../../images/1.gif" width="4" 

height="5" align="absmiddle"> 首页　 <img src="../../images/2.gif" width="3" height="5" 

align="absmiddle"> 上一页　 <img src="../../images/2-2.gif" width="3" height="5" 

align="absmiddle"> 下一页　 <img src="../../images/3.gif" width="4" height="5" 

align="absmiddle"> 末页　　共 1 页 1 条记录</td>
      </tr>
	  <tr>
	    <td width="6%" class="td_top"c align="center"><input name="chk" type="checkbox" 

id="chk" onClick="selectAllByChk(chk,checkbox)" value="checkbox0"></td>
	    <td width="16%" class="td_top">新闻标题</td>
        <td width="15%" class="td_top">栏目名称</td>
        <td width="14%" class="td_top">上级栏目名称</td>
        <td width="13%" class="td_top">新闻发布者</td>
        <td width="19%" class="td_top">新闻发布时间</td>
        <td width="11%" class="td_top">审核状态</td>
        <td width="6%" class="td_top">修改</td>
      </tr>
      <tr>
        <td class="td07" align="center"><input type="checkbox" name="checkbox" 

value="checkbox"></td>
        <td class="td07"><a href="#" onClick="javascript:windowOpen('查看新闻详细信息.jsp','','',670,450,'','','')">我猜</a></td>
        <td class="td07">我猜</td>
        <td class="td07">娱乐新闻</td>
        <td class="td07">张三</td>
        <td class="td07"><FONT style="FONT-SIZE: 10pt" color=#000000>2008/04/10 <FONT 

style="FONT-SIZE: 10pt" color=#000000>11:23</FONT></FONT></td>
        <td class="td07"><a href="#" onClick="javascript:windowOpen('新闻审核.htm','','',700,600,'no','yes','100','100')">未审核</a></td>
        <td class="td07">
		  <a href="#" onClick="javascript:windowOpen('新闻修改.htm','','',700,430,'no','yes','100','100')">修改</a>
        </td>
      </tr>
      <tr>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
      </tr>
      <tr>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
        <td class="td07">&nbsp;</td>
      </tr>
     

    </table>
    <p><br>
    </p>
</form>
</body>
</html>
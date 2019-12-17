<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>个人设置</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../js/util.js">
</script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {color: #333333}
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
    <td width="79%" class="td_page style1">--普通查询--<a href="新闻维护_按时间查询.jsp" class="style1">按时间查询</a>--</td>
</table>
<form name="form1" method="post" action="">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" 

class="table01">
          <tr>
            <td colspan="3" class="td_02"><SPAN class=td_title>新闻查询</SPAN></td>
            <td class="td_02">&nbsp;</td>
          </tr>
		  
          <tr>
            <td width="14%" align="center" class="td_02">栏目名称</td>
            <td width="34%" class="td_02"><select name="select" style="width:98.9% ">
              <option value="1" selected>--请选择--</option>
              <option value="2">体育新闻</option>
              <option value="3">娱乐新闻</option>
            </select>
            </span><span class="td_form02"></td>
            <td align="center" class="td_02"></td>
            <td width="34%" class="td_02"><!-- <select name="select" class="input" 

style="width:98.9% ">
              <option value="1" selected>--请选择--</option>
              <option value="2">天下足球</option>
              <option value="3">我猜</option>
                                    </select> --></td>
          </tr>
          <tr>
            <td class="td_02" align="center">新闻标题</td>
            <td class="td_02"><input name="textfield2" type="text" class="input" 

style="width:98.9% " ></td>
            <td align="center" class="td_02"><input name="Submit" type="button" class="buttonface02" 

value="  查询  "></td>
            <td class="td_02"><!-- <input name="textfield3" type="text" class="input" 

style="width:98.9% " > --></td>
          </tr>
          <!-- <tr>
            <td class="td_02" align="center">关键词</td>
            <td class="td_02">
              <input name="textfield" type="text" class="input" style="width:98.9% " >      

      </td>
            <td class="td_02" align="center">&nbsp;</td>
            <td class="td_02"></td>
          </tr> -->
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
        <td class="td07"><a href="#" onClick="javascript:windowOpen('查看新闻详细信息.jsp','','',670,450,'no','yes','100','100')">我猜</a></td>
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



<br>
<br>
</body>
</html>
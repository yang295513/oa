<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>栏目管理</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="/js/jquery-3.4.1.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"> <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="2%" valign="middle" background="../../images/bg_03.gif">&nbsp;</td>
          <td width="2%" valign="middle" background="../../images/bg_03.gif"><img src="../../images/main_28.gif" width="9" height="9" align="absmiddle"></td>
          <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">栏目添加</font></div></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" id="form1">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <tr>
        <td colspan="2" class="td_02" align="center">栏目添加</td>
      </tr>
      <tr>
        <td width="14%" class="td_02">栏目名称</td>
        <td width="86%" class="td_02"><input name="textfield" type="text" class="input" style="width:99% " id="label_title"></td>
      </tr>
      <tr>
        <td class="td_02">上级栏目名称</td>
        <td class="td_02"><select name="select" class="input" style="width:99% " id="labels">
          <option value="0" selected>--请选择--</option>

        </select></td>
      </tr>
      <tr>
        <td class="td_02">栏目描述</td>
        <td class="td_02"><textarea name="textarea" rows="5" style="width:99% " id="label_content"></textarea>
        </td>
      </tr>
    </table><br>
    <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="td_page"><div align="center">
            <input name="button" type="button" class="buttonface02" value="  添 加  " onClick="tianjia()">
&nbsp;&nbsp;
        <input name="Submit" type="reset" class="buttonface02" value="  重 置  ">
&nbsp;&nbsp;
<input name="Submit" type="submit" class="buttonface02" value="  关 闭  " onClick="window.close()">
        </div></td>
      </tr>
    </table>
    <br>
  </form>
</center>
<script>
  function tianjia()
  {
    console.log($("#label_title").val(),
          $("#label_content").val(),
         $("#labels").val());
      $.ajax({
        url:"${pageContext.request.contextPath}/insertNewLabel",
        type:"post",
        data:{
          label_title:$("#label_title").val(),
          label_content:$("#label_content").val(),
          pid:$("#labels").val()
        },
        dataType:"json",
        success:function (data) {
          alert("添加完毕！");
          console.log(data);
          window.close();
        }
      })
  }
  $(document).ready(function () {
    $.ajax({
      url:"${pageContext.request.contextPath}/getNewsTitles",
      type:"get",
      dataType:"json",
      success: function (data) {
        var labels = data.data;
        for(var i=0;i<labels.length;i++) {
          var label = "<option value=\""+labels[i]['id']+"\">"+labels[i]['label_name']+"</option>";
          $("#labels").append(label);
        }
      }
    })
  });


</script>
</body>
</html>

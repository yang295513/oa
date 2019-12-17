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
          <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">栏目修改</font></div></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <tr>
        <td class="td_02">栏目名称</td>
        <td class="td_02"><input name="textfield" type="text" class="input" style="width:99% " id="label_name"></td>
      </tr>
      <tr>
        <td class="td_02">上级栏目名称</td>
        <td class="td_02">          <select name="select2" style="width:99% " id="parent">
            <option value="null">无</option>
          </select></td>
      </tr>
      <tr>
        <td width="14%" class="td_02">栏目描述</td>
        <td width="86%" class="td_02">
          <textarea name="textarea" rows="5" style="width:99% " id="content"></textarea>
        </td>
      </tr>
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="td_page"><div align="center">
            
            <input name="button" type="button" class="buttonface02" value="  修 改  " onClick="xiugai2()">
            &nbsp;&nbsp;
            <input name="Submit" type="reset" class="buttonface02" value="  重 置  ">
            &nbsp; 
            <input name="Submit" type="submit" class="buttonface02" value="  关 闭  " onClick="window.close()">
        </div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
</center>
<script>
  function GetQueryString(name)
  {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) {
      return unescape(r[2]);
    }
    return null;
  };
  $(function () {
    $.ajax({
      url:"${pageContext.request.contextPath}/selectNewLabel",
      type:"post",
      data:{id:GetQueryString("id")},
      dataType:"json",
      success:function (data) {
        // console.log(data);
        $.ajax({
          url:"${pageContext.request.contextPath}/getNewsTitles",
          type:"get",
          dataType:"json",
          success:function (data2) {
            // console.log(data2);
            for(var i=0;i<data2.data.length;i++) {
                if(data2.data[i]['id'] == data.data['pid']){
                  // console.log(data2.data[i]['id']);
                  $("#parent").append("<option selected value=\""+data2.data[i]['id']+"\">"+data2.data[i]['label_name']+"</option>");
                }else{
                  $("#parent").append("<option value=\""+data2.data[i]['id']+"\">"+data2.data[i]['label_name']+"</option>");
                }
            }
            $("#label_name").val(data.data['label_name']);
            $("#content").text(data.data['label_content']);
          }
        })
      }
    })
  });
  function xiugai2()
  {
    $.ajax({
      url:"${pageContext.request.contextPath}/updateNewLabel",
      type:"post",
      dataType:"json",
      data:{
        id:GetQueryString("id"),
        label_name:$("#label_name").val(),
        parent:$("#parent").val(),
        content:$("#content").text(),
      },
      success:function (data) {
        if(data.code == "200") {
          alert("修改成功!");
        }else{
          alert("修改失败!");
        }
        window.close();
      }
    })
  }
</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>栏目管理</title>
<link href="/css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="/js/util.js"></script>
<script language="javascript" src="/js/jquery-3.4.1.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="bottom" class="td06"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="2%" valign="middle" background="/images/bg_03.gif">&nbsp;</td>
          <td width="2%" valign="middle" background="/images/bg_03.gif"><img src="/images/main_28.gif" width="9" height="9" align="absmiddle"></td>
          <td height="30" valign="middle" background="/images/bg_03.gif"><div align="left"><font color="#FFFFFF">栏目管理</font></div></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <form name="form1" method="post" action="">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <tr>
        <td colspan="2" class="td_02"><SPAN class=td_title>根据栏目名称查询</SPAN></td>
      </tr>
      <tr>
        <td width="14%" class="td_02">栏目名称</td>
        <td width="86%" class="td_02">
          <select name="select" class="input" style="width:99% " id="input">
            <option value="0" selected>--请选择--</option>
          </select>
        </td>
      </tr>
     <!--  <tr>
        <td class="td_02">二级栏目名称</td>
        <td class="td_02">
          <select name="select" class="input" style="width:99% ">
            <option value="1" selected>--请选择--</option>
            <option value="2">天下足球</option>
            <option value="3">我猜</option>
          </select>
        </td>
      </tr> -->
    </table>
    <br>
    <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="td_page" align="left">
          <div align="right">
            <input name="Submit" type="submit" class="buttonface02" value="添加栏目" onClick="javascript:windowOpen('栏目添加','','',700,300,'','','')">
          </div></td>
      </tr>
    </table>
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
    
      <tr>
        <td colspan="5" align="right" class="td07">
          <img src="/images/1.gif" width="4" height="5" align="absmiddle"> <a id="first_page" style="cursor: pointer">首页</a>　
          <img src="/images/2.gif" width="3" height="5" align="absmiddle"> <a id="front_page" style="cursor: pointer">上一页</a>　
          <img src="/images/2-2.gif" width="3" height="5" align="absmiddle"> <a id="after_page" style="cursor: pointer">下一页　 </a>
          <img src="/images/3.gif" width="4" height="5" align="absmiddle"> <a id="last_page" style="cursor: pointer">末页</a>　　
          共 <span id="total">0</span> 页 <span id="count">0</span> 条记录</td>
      </tr>
      <tr>
        <td width="17%" class="td_top">栏目名称</td>
        <td width="15%" class="td_top">上级栏目名称</td>
        <td width="44%" class="td_top">栏目描述</td>
        <td width="12%" class="td_top">删除</td>
        <td width="12%" class="td_top">修改</td>
      </tr>
      <tbody id="label_new_table">

      </tbody>
    </table>
    <p>&nbsp;</p>
  </form>
</center>
<script>

  var first_page = 0;
  var front_page = 0;
  var after_page = 0;
  var last_page = 0;
  var page_value = 0;

  function clearTobdy() {
    $("#label_new_table").html("");
  }
  $(document).ready(function () {
    $("#input").change(function () {
      var value = $("#input").val();
      page_value = value;
      if(value!=0){
        clearTobdy();
        $("#total").text(0);
        $("#count").text(0);
        first_get_news($("#input").val());
      }
    });
    $("#first_page").click(function () {
      get_news(page_value,1);
    });
    $("#front_page").click(function () {
      get_news(page_value,front_page);
    });
    $("#after_page").click(function () {
      get_news(page_value,after_page);
    });
    $("#last_page").click(function () {;
      get_news(page_value,last_page);
    });
    $.ajax({
      url:"${pageContext.request.contextPath}/getNewsTitles",
      type:"get",
      dataType:"json",
      success: function (data) {
        var labels = data.data;
        for(var i=0;i<labels.length;i++) {
          var label = "<option value=\""+labels[i]['id']+"\">"+labels[i]['label_name']+"</option>";
          $("#input").append(label);
        }
      }
    })
  });
  function shanchu(id) {
    $.ajax({
      url:"${pageContext.request.contextPath}/deleteNewLabel",
      type:"post",
      data:{id:id},
      dataType:"json",
      success:function (data) {
        console.log(data);
        if(data.code == "200") {
          alert("删除成功!");
          window.location.reload();
        }else{
          alert("删除失败！");
        }
      }
    })
  }
  function first_get_news(value) {
    $.ajax({
      url:"${pageContext.request.contextPath}/getNews",
      type:"post",
      dataType:"json",
      data:{pid:value,page:1},
      success: function (data) {
        clearTobdy();
        console.log(data);
        if(data.data!=null) {
          $("#total").text(data.data['total']);
          $("#count").text(data.data['count']);
          page_value = value;
          first_page = 1;
          front_page = data.data['start']-1;
          after_page = data.data['start']+1;
          last_page = data.data['total'];
          for(var i=0;i<data.data['pageList'].length;i++) {
            var jumpid = data.data['pageList'][i]['id'];
            var label_name = "<td class=\"td07\">"+data.data['pageList'][i]['label_name']+"</td>";
            var label_content = "<td class=\"td07\">"+data.data['pageList'][i]['label_content']+"</td>";
            var parent_name = "<td class=\"td07\">"+data.data['parent']+"</td>";
            var del = "<td class=\"td07\"><a href=\"#\" onClick=\"shanchu("+data.data['pageList'][i]['id']+")\">删除</a></td>";
            var update = "<td class=\"td07\"><a href=\"#\" onClick=\"javascript:windowOpen('栏目修改?id="+jumpid+"','','',670,260,'no','yes','100','100')\">修改</a></td>";
            var trtmp = $("<tr></tr>");
            trtmp.append(label_name);
            trtmp.append(parent_name);
            trtmp.append(label_content);
            trtmp.append(del);
            trtmp.append(update);
            trtmp.appendTo("#label_new_table");
          }
        }
      }
    })
  }

  function get_news(value,page) {

    if(page<1){
      alert("已经是第一页了！");
    } else if(page>Number($("#total").text())) {
      alert("已经是最后一页了!");
    }else{
      $.ajax({
        url:"${pageContext.request.contextPath}/getNews",
        type:"post",
        dataType:"json",
        data:{pid:value,page:page},
        success: function (data) {
          clearTobdy();
          if(data.data!=null) {
            $("#total").text(data.data['total']);
            $("#count").text(data.data['count']);
            page_value = value;
            first_page = 1;
            front_page = data.data['start']-1;
            after_page = data.data['start']+1;
            last_page = data.data['total'];
            for(var i=0;i<data.data['pageList'].length;i++) {
              var jumpid = data.data['pageList'][i]['id'];
              var label_name = "<td class=\"td07\">"+data.data['pageList'][i]['label_name']+"</td>";
              var label_content = "<td class=\"td07\">"+data.data['pageList'][i]['label_content']+"</td>";
              var parent_name = "<td class=\"td07\">"+data.data['parent']+"</td>";
              var del = "<td class=\"td07\"><a href=\"#\" onClick=\"shanchu("+data.data['pageList'][i]['id']+")\">删除</a></td>";
              var update = "<td class=\"td07\"><a href=\"#\" onClick=\"javascript:windowOpen('栏目修改?id="+jumpid+"','','',670,260,'no','yes','100','100')\">修改</a></td>";
              var trtmp = $("<tr></tr>");
              trtmp.append(label_name);
              trtmp.append(parent_name);
              trtmp.append(label_content);
              trtmp.append(del);
              trtmp.append(update);
              trtmp.appendTo("#label_new_table");
            }
          }
        }
      })
    }
  }
</script>
</body>
</html>

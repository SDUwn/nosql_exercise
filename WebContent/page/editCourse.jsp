<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<%
response.setContentType("text/html;charset=utf-8");  
request.setCharacterEncoding("utf-8");
String CID=request.getParameter("CID");
String NAME=request.getParameter("NAME");
String FCID=request.getParameter("FCID");
String CREDIT=request.getParameter("CREDIT");
%>
<form class="layui-form" action="doEditCourse.jsp?CID=<%=CID %>&NAME=<%=NAME %>&FCID=<%=FCID %>&CREDIT=<%=CREDIT %> " method="post">
	<div class="layui-form-item">
	    <label class="layui-form-label">CID</label>
	    <div class="layui-input-block">
	      <input name="CID1" class="layui-input" type="text" value="<%=CID %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">NAME</label>
	    <div class="layui-input-block">
	      <input name="NAME1" class="layui-input" type="text" value="<%=NAME %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">FCID</label>
	    <div class="layui-input-block">
	      <input name="FCID1" class="layui-input" type="text" value="<%=FCID %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">CREDIT</label>
	    <div class="layui-input-block">
	      <input name="CREDIT1" class="layui-input" type="text" value="<%=CREDIT %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" type="submit">提交</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	      <button type="button" class="layui-btn" onclick="test()">返回</button>
	    </div>
	</div>
</form>

<script src="../layui/layui.js" charset="utf-8"></script>
<script>

function test(){
	window.location.href="javascript:history.go(-1)";
}
</script>
</body>
</html>
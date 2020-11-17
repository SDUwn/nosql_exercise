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
String TID=request.getParameter("TID");
String NAME=request.getParameter("NAME");
String SEX=request.getParameter("SEX");
String AGE=request.getParameter("AGE");
String DNAME=request.getParameter("DNAME");
%>
<form class="layui-form" action="doEditTeacher.jsp?TID=<%=TID %> " method="post">
	<div class="layui-form-item">
	    <label class="layui-form-label">TID</label>
	    <div class="layui-input-block">
	      <input name="TID1" class="layui-input" type="text" value="<%=TID %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">NAME</label>
	    <div class="layui-input-block">
	      <input name="NAME1" class="layui-input" type="text" value="<%=NAME %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">SEX</label>
	    <div class="layui-input-block">
	      <input name="SEX1" class="layui-input" type="text" value="<%=SEX %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">AGE</label>
	    <div class="layui-input-block">
	      <input name="AGE1" class="layui-input" type="text" value="<%=AGE %>" >
	    </div>
    </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">DNAME</label>
	    <div class="layui-input-block">
	      <input name="DNAME1" class="layui-input" type="text" value="<%=DNAME %>" >
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
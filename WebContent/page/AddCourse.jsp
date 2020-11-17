<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>

<form class="layui-form" action="doAddCourse.jsp" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">CID</label>
    <div class="layui-input-inline">
      <input name="CID" class="layui-input" type="text" placeholder="请输入SID" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">NAME</label>
    <div class="layui-input-inline">
      <input name="NAME" class="layui-input" type="text" placeholder="请输入NAME" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">FCID</label>
    <div class="layui-input-inline">
      <input name="FCID" class="layui-input" type="text" placeholder="请输入FCID" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">CREDIT</label>
    <div class="layui-input-inline">
      <input name="CREDIT" class="layui-input" type="text" placeholder="请输入CREDIT" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit">提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>

<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
layui.use('table', function(){
	  var table = layui.table;
	      table.init('parse-table-demo', { //转化静态表格
			page:true
	      });
	    });
</script>
</body>
</html>
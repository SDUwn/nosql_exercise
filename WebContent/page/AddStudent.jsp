<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>

<form class="layui-form" action="doAddStudent.jsp" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">SID</label>
    <div class="layui-input-inline">
      <input name="SID" class="layui-input" type="text" placeholder="请输入SID" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">NAME</label>
    <div class="layui-input-inline">
      <input name="NAME" class="layui-input" type="text" placeholder="请输入NAME" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item" pane="">
    <label class="layui-form-label">SEX</label>
    <div class="layui-input-block">
      <input name="SEX" title="男" type="radio" checked="" value="男">
      <input name="SEX" title="女" type="radio" value="女">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">AGE</label>
    <div class="layui-input-inline">
      <input name="AGE" class="layui-input" type="text" placeholder="请输入AGE" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">BIRTHDAY</label>
    <div class="layui-input-inline">
      <input name="BIRTHDAY" class="layui-input" type="date" placeholder="请输入BIRTHDAY" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">DNAME</label>
    <div class="layui-input-inline">
      <input name="DNAME" class="layui-input" type="text" placeholder="请输入DNAME" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">CLASS</label>
    <div class="layui-input-inline">
      <input name="CLASS" class="layui-input" type="text" placeholder="请输入CLASS" autocomplete="off">
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
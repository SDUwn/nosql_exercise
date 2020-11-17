<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Dbutil"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="static com.mongodb.client.model.Filters.*"%>
<%@page import="static com.mongodb.client.model.Projections.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>找出年龄小于20岁的学生的姓名、性别</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
      	<th lay-data="{field:'2', width:150}">NAME</th>
       	<th lay-data="{field:'3', width:150}">SEX</th>
    </tr> 
  </thead>
  <tbody>
<%
Document doc;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student");
MongoCursor<Document> mongoCursor = collection.find(lt("AGE",20)).projection(fields(include("NAME","SEX"),excludeId())).iterator();  
while(mongoCursor.hasNext()){  
   doc=mongoCursor.next();
   %>
   <tr>
   		<td><%=doc.get("NAME") %></td>
   		<td><%=doc.get("SEX") %></td>
   </tr>
<% 
}
%>
</tbody>
</table>
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
layui.use('table', function(){
	  var table = layui.table;
	      table.init('parse-table-demo', { //转化静态表格
	        //height: 'full-500'
			page:true
	      });
	    });
</script>
</body>
</html>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>找出年龄小于20岁的所有学生</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
    	<th lay-data="{field:'1', width:150,fixed:'left'}">SID</th>
      	<th lay-data="{field:'2', width:150}">NAME</th>
       	<th lay-data="{field:'3', width:150}">SEX</th>
       	<th lay-data="{field:'4', width:150}">AGE</th>
       	<th lay-data="{field:'5', width:150}">BIRTHDAY</th>
        <th lay-data="{field:'6', width:150}">DNAME</th>
        <th lay-data="{field:'7', width:150}">CLASS</th>
    </tr> 
  </thead>
  <tbody>
<%
Document doc;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student");
MongoCursor<Document> mongoCursor = collection.find(lt("AGE",20)).iterator();  
while(mongoCursor.hasNext()){  
   doc=mongoCursor.next();
   %>
   <tr>
   		<td><%=doc.get("SID") %></td>   		
   		<td><%=doc.get("NAME") %></td>
   		<td><%=doc.get("SEX") %></td>
   		<td><%=doc.get("AGE") %></td>
   		<td><%=doc.get("BIRTHDAY") %></td>
   		<td><%=doc.get("DNAME") %></td>
   		<td><%=doc.get("CLASS") %></td>
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
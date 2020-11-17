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
<title>教师表的插入与导入</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<input type="button" class="layui-btn" value="插入数据"  onclick="addTeacher()">
<input type="button" class="layui-btn" value="导入数据"  onclick="importTeacher()">
<div id="div1">
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
        <th lay-data="{field:'2', width:150}">TID</th>
      	<th lay-data="{field:'3', width:150}">NAME</th>
       	<th lay-data="{field:'4', width:150}">SEX</th>      	
       	<th lay-data="{field:'5', width:150}">AGE</th>       	
       	<th lay-data="{field:'7', width:150}">DNAME</th>  
       	<th lay-data="{field:'8', width:150}">编辑</th>     	
    </tr>
  </thead>
  <tbody>
<%
Document doc;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("teacher");
MongoCursor<Document> mongoCursor = collection.find().projection(fields(excludeId())).iterator();  
while(mongoCursor.hasNext()){
   doc=mongoCursor.next();
   %>
   <tr>   		
   		<td><%=doc.get("TID") %></td>
   		<td><%=doc.get("NAME") %></td>
   		<td><%=doc.get("SEX") %></td>   		
   		<td><%=doc.get("AGE") %></td>   		
   		<td><%=doc.get("DNAME") %></td> 
    	<td><input type="button" class="layui-btn " name="edit" value="编辑"></td>
   		  		
   </tr>
<% 
}
%>
</tbody>
</table>
</div>
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
$(function() {
	$("#div1").on("click", ":button", function(event) {
		if($(this).attr("name")=='edit'){
			TID=$(this).closest("tr").find("td").eq(0).text();
			NAME=$(this).closest("tr").find("td").eq(1).text();
			SEX=$(this).closest("tr").find("td").eq(2).text();
			AGE=$(this).closest("tr").find("td").eq(3).text();
			DNAME=$(this).closest("tr").find("td").eq(4).text();
			window.location.href="editTeacher.jsp?TID="+TID+"&NAME="+NAME+"&SEX="+SEX+"&AGE="+AGE+"&DNAME="+DNAME;
		}
	});
});

function addTeacher(){
	window.location.href="AddTeacher.jsp";
}
function importTeacher(){
	var inputObj=document.createElement('input') 
    inputObj.setAttribute('id','_ef'); 
    inputObj.setAttribute('type','file'); 
    inputObj.setAttribute("style",'visibility:hidden'); 
    document.body.appendChild(inputObj); 
    inputObj.click(); 
    window.location.href=encodeURI("doImportTeacher.jsp?File="+inputObj.value+"");
}

layui.use('table', function(){
	  var table = layui.table;
	      table.init('parse-table-demo', {
			page:true
	      });
	    });
</script>
</body>
</html>
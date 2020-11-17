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
<div class="layui-form-item">
    <div class="layui-input-inline">
      <input id="CID" name="CID" class="layui-input" type="text" placeholder="输入CID" autocomplete="off" >
    </div>
    <input type="button" class="layui-btn" value="添加课程" onclick="addStudentCourse()">
</div>
<table class="layui-table" >
	<thead>
    <tr>
      	<th lay-data="{field:'4', width:150}">CID</th>
        <th lay-data="{field:'5', width:150}">CNAME</th>
        <th lay-data="{field:'6', width:150}">CREDIT</th>
       	<th lay-data="{field:'8', width:150}">SCORE</th> 
       	<th lay-data="{field:'9', width:150}">编辑</th>  
       	<th lay-data="{field:'9', width:150}">删除</th>            	      	
    </tr>
  </thead>
  <tbody>
<%
long SID=Long.parseLong(request.getParameter("SID"));
Document doc,docB=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student_course");
MongoCursor<Document> mongoCursor = collection.find(eq("SID",SID)).projection(fields(include("CID","SCORE"),excludeId())).iterator();  
while(mongoCursor.hasNext()){
   doc=mongoCursor.next();
   %>
   <tr>   		   		
   		<td><%=doc.get("CID") %></td>
   		<%
   		MongoCollection<Document> collectionB = db.getCollection("course");
   		MongoCursor<Document> mongoCursorB = collectionB.find(eq("CID",doc.get("CID"))).projection(fields(excludeId())).iterator();  
   		if(mongoCursorB.hasNext()){
   		   docB=mongoCursorB.next();
   		}
   		%>
   		<td><%=docB.get("NAME") %></td>
   		<td><%=docB.get("CREDIT") %></td>
   		<td><%=doc.get("SCORE") %></td>
    	<td><input type="button" class="layui-btn " name="edit" value="编辑" ></td>
    	<td><input type="button" class="layui-btn " name="delete" value="删除" ></td>
   </tr>
<% 
}
System.out.println("ok");
%>
</tbody>
</table>

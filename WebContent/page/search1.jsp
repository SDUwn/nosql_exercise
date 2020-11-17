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

<table class="layui-table" >
	<thead>
    <tr>
        <th lay-data="{field:'2', width:150}">CID</th>
      	<th lay-data="{field:'3', width:150}">NAME</th>
       	<th lay-data="{field:'4', width:150}">FCID</th>      	
       	<th lay-data="{field:'5', width:150}">CREDIT</th>       	
    </tr>
  </thead>
  <tbody>
<%
long TID=Long.parseLong(request.getParameter("TID"));
Document doc,docB=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("teacher_course");
MongoCursor<Document> mongoCursor = collection.find(eq("TID",TID)).projection(fields(include("CID"),excludeId())).iterator();  
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
   		<td><%=docB.get("FCID") %></td>
   		<td><%=docB.get("CREDIT") %></td>
   </tr>
<% 
}
%>
</tbody>
</table>


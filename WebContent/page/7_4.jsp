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
<%@page import="com.mongodb.client.AggregateIterable" %>
<%@page import="java.util.Arrays" %>
<%@page import="static com.mongodb.client.model.Projections.*" %>
<%@page import="org.bson.conversions.Bson" %>
<%@page import="static com.mongodb.client.model.Aggregates.*" %>
<%@page import="static com.mongodb.client.model.Accumulators.*" %>
<%@page import="com.mongodb.client.model.Sorts" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询每门课的选修人数与平均成绩</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
    	<th lay-data="{field:'1', width:150,fixed:'left'}">CID</th>
        <th lay-data="{field:'2', width:150}">CNAME</th>
        <th lay-data="{field:'3', width:150}">numberOfStudent</th>        
        <th lay-data="{field:'7', width:150}">avg_score</th>
        
    </tr> 
  </thead>
  <tbody>
<%
Document doc,doc1=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> mc = db.getCollection("student_course");
AggregateIterable<Document> iterable = mc.aggregate(Arrays.asList(
 		group("$CID", sum("num_student",1),avg("avg_score","$SCORE"))
		));
MongoCursor<Document> cursor = iterable.iterator();
while(cursor.hasNext()) {
	doc = cursor.next();
	%>
	<tr>
   		<td><%=doc.get("_id") %></td>  
<%
MongoCollection<Document> collection1 = db.getCollection("course");
MongoCursor<Document> mongoCursor1 = collection1.find(eq("CID",doc.get("_id"))).projection(fields(include("NAME"),excludeId())).iterator();  
if(mongoCursor1.hasNext()){  
   doc1=mongoCursor1.next();
}
%>
     	<td><%=doc1.get("NAME") %></td>
     	<td><%=doc.get("num_student") %></td>
     	<td><%=doc.get("avg_score") %></td>
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
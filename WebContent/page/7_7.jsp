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
<title>求每位同学的成绩分布：优秀、良好、合格、不合格的课程门数</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
    	<th lay-data="{field:'1', width:150,fixed:'left'}">SID</th>
        <th lay-data="{field:'2', width:150}">SNAME</th>
        <th lay-data="{field:'3', width:150}">A_count</th>
        <th lay-data="{field:'4', width:150}">B_count</th>
        <th lay-data="{field:'5', width:150}">C_count</th>
        <th lay-data="{field:'6', width:150}">D_count</th>
    </tr> 
  </thead>
  <tbody>
<%
Document doc,doc1=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> mc = db.getCollection("student_course");
AggregateIterable<Document> iterableA = mc.aggregate(Arrays.asList(
		match(and(lte("SCORE",100),gte("SCORE", 90))),
 		group("$SID", sum("A_count",1))
		));
AggregateIterable<Document> iterableB = mc.aggregate(Arrays.asList(
		match(and(lte("SCORE",89),gte("SCORE", 80))),
 		group("$SID", sum("B_count",1))
		));
AggregateIterable<Document> iterableC = mc.aggregate(Arrays.asList(
		match(and(lte("SCORE",79),gte("SCORE", 60))),
 		group("$SID", sum("C_count",1))
		));
AggregateIterable<Document> iterableD = mc.aggregate(Arrays.asList(
		match(lt("SCORE",60)),
 		group("$SID", sum("D_count",1))
		));
MongoCursor<Document> cursorA = iterableA.iterator();
MongoCursor<Document> cursorB = iterableB.iterator();
MongoCursor<Document> cursorC = iterableC.iterator();
MongoCursor<Document> cursorD = iterableD.iterator();

while(cursorA.hasNext()) {
	doc = cursorA.next();
	%>
	<tr>
   		<td><%=doc.get("_id") %></td>  
<%
MongoCollection<Document> collection1 = db.getCollection("student");
MongoCursor<Document> mongoCursor1 = collection1.find(eq("SID",doc.get("_id"))).projection(fields(include("NAME"),excludeId())).iterator();  
if(mongoCursor1.hasNext()){  
   doc1=mongoCursor1.next();
}
%>
     	<td><%=doc1.get("NAME") %></td>
     	<td><%=doc.get("A_count") %></td>
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
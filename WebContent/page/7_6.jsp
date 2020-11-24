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
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.mongodb.client.DistinctIterable" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>列出student_course表中出现过的所有课程名称（distinct）</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">

</head>
<body>
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}">
	<thead>
    <tr>
    	<th lay-data="{field:'1', width:150,fixed:'left'}">CID</th>
        <th lay-data="{field:'2', width:150}">NAME</th>
    </tr> 
  </thead>
  <tbody>
<%
int doc;
Document doc1=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> mc = db.getCollection("student_course");
DistinctIterable<Integer> di = mc.distinct("CID", Integer.class);
MongoCursor<Integer> mongoCursor=di.iterator();
while(mongoCursor.hasNext()){  
	   doc=mongoCursor.next();
	   MongoCollection<Document> collection1 = db.getCollection("course");
	   MongoCursor<Document> mongoCursor1 = collection1.find(eq("CID",doc)).iterator();  
	   if(mongoCursor1.hasNext()){  
	      doc1=mongoCursor1.next();
	}
%>
<tr>
	<td><%=doc %></td>
	<td><%=doc1.get("NAME") %></td>
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
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
<title>学生-课程表</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>

<div class="layui-form-item">
    <div class="layui-input-inline">
      <input id="SID" name="SID" class="layui-input" type="text" placeholder="输入SID" autocomplete="off" >
    </div>
    <input type="button" class="layui-btn" value="查询" onclick="search()">
</div>

<div id="div1">
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}"> 
	<thead>
    <tr>
        <th lay-data="{field:'2', width:150}">SID</th>
      	<th lay-data="{field:'4', width:150}">CID</th>
        <th lay-data="{field:'5', width:150}">CNAME</th>
       	<th lay-data="{field:'6', width:150}">TID</th>      	
      	<th lay-data="{field:'7', width:150}">TNAME</th>
       	<th lay-data="{field:'8', width:150}">SCORE</th> 
       	<th lay-data="{field:'9', width:150}">编辑</th>     	
    </tr>
  </thead>
  <tbody>
<%
Document doc,docA=null,docB=null,docC=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student_course");
MongoCursor<Document> mongoCursor = collection.find().projection(fields(excludeId())).iterator();  
while(mongoCursor.hasNext()){
   doc=mongoCursor.next();
   %>
   <tr>   		
   		<td><%=doc.get("SID") %></td>
   		
   		<td><%=doc.get("CID") %></td>
   		<%
   		MongoCollection<Document> collectionB = db.getCollection("course");
   		MongoCursor<Document> mongoCursorB = collectionB.find(eq("CID",doc.get("CID"))).projection(fields(include("NAME"),excludeId())).iterator();  
   		if(mongoCursorB.hasNext()){
   		   docB=mongoCursorB.next();
   		}
   		%>
   		<td><%=docB.get("NAME") %></td>
   		<td><%=doc.get("TID") %></td>
   		<%
   		MongoCollection<Document> collectionC = db.getCollection("teacher");
   		MongoCursor<Document> mongoCursorC = collectionC.find(eq("TID",doc.get("TID"))).projection(fields(include("NAME"),excludeId())).iterator();  
   		if(mongoCursorC.hasNext()){
   		   docC=mongoCursorC.next();
   		}
   		%>		
   		<td><%=docC.get("NAME") %></td>
   		<td><%=doc.get("SCORE") %></td>		
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
var XMLHttpRequest;
function processResponse() {  
    if (XMLHttpReq.readyState == 4) { // 判断对象状态  
        if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息  
        	document.getElementById("div1").innerHTML=XMLHttpReq.responseText;
        } else { 
            window.alert("您所请求的页面有异常。");  
        }  
    }  
}  
function createXMLHttpRequest() {  
    if(window.XMLHttpRequest) { //Mozilla 浏览器  
        XMLHttpReq = new XMLHttpRequest();  
    }  
    else if (window.ActiveXObject) { // IE浏览器  
        try {  
            XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");  
        } catch (e) {  
            try {  
                XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");  
            } catch (e) {}  
        }  
    }  
}
function search(){
	$("#div1").empty();
	var SID=$("#SID").val();
	createXMLHttpRequest();  
    var url = "search.jsp?SID="+SID+"";  
    XMLHttpReq.open("GET", url, true);  
    XMLHttpReq.onreadystatechange = processResponse;//指定响应函数  
    XMLHttpReq.send(null);
}
function addStudentCourse(){
	var CID=$("#CID").val();
	var SID=$("#SID").val();
	createXMLHttpRequest();  
    var url = "addStudentCourse.jsp?SID="+SID+"&CID="+CID;  
    XMLHttpReq.open("GET", url, true);  
    XMLHttpReq.send(null);
}
$(function() {
	$("#div1").on("click", ":button", function(event) {
		if($(this).attr("name")=='edit'){
			var CID=$(this).closest("tr").find("td").eq(0).text();
			var NAME=$(this).closest("tr").find("td").eq(1).text();
			var CREDIT=$(this).closest("tr").find("td").eq(2).text();
			var SCORE=$(this).closest("tr").find("td").eq(3).text();
			var SID=$("#SID").val();
			window.location.href="editStudentCourse.jsp?SCORE="+SCORE+"&SID="+SID+"&CID="+CID+"&NAME="+NAME+"&CREDIT="+CREDIT;
			}else if($(this).attr("name")=='delete'){
				var CID=$(this).closest("tr").find("td").eq(0).text();
				var SID=$("#SID").val();
				window.location.href="deleteStudentCourse.jsp?CID="+CID+"&SID="+SID;
				}
	});
});

layui.use('table', function(){
	  var table = layui.table;
	      table.init('parse-table-demo', {
			page:true
	      });
	    });
</script>
</body>
</html>
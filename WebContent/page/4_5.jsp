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
<title>教师-课程表</title>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
</head>
<body>

<div class="layui-form-item">
    <div class="layui-input-inline">
      <input id="TID" name="TID" class="layui-input" type="text" placeholder="输入TID" autocomplete="off" >
    </div>
    <input type="button" class="layui-btn" value="查询" onclick="search()">
</div>
<div class="layui-form-item">
    <div class="layui-input-inline">
      <input id="CID" name="CID" class="layui-input" type="text" placeholder="输入CID" autocomplete="off" >
    </div>
    <input type="button" class="layui-btn" value="添加课程" onclick="addStudentCourse()">
</div>

<div id="div1">
<table class="layui-table" lay-filter="parse-table-demo" lay-data="{id: 'idTest'}"> 
	<thead>
    <tr>
        <th lay-data="{field:'2', width:150}">TID</th>
        <th lay-data="{field:'3', width:150}">CID</th>
      	<th lay-data="{field:'4', width:150}">CNAME</th>
        <th lay-data="{field:'5', width:150}">TNAME</th>
       	<th lay-data="{field:'9', width:150}">编辑</th>     	
    </tr>
  </thead>
  <tbody>
<%
Document doc,docA=null,docB=null,docC=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("teacher_course");
MongoCursor<Document> mongoCursor = collection.find().projection(fields(excludeId())).iterator();  
while(mongoCursor.hasNext()){
   doc=mongoCursor.next();
   %>
   <tr>   		
   		<td><%=doc.get("TID") %></td>
   		
   		<td><%=doc.get("CID") %></td>
   		<%
   		MongoCollection<Document> collectionB = db.getCollection("course");
   		MongoCursor<Document> mongoCursorB = collectionB.find(eq("CID",doc.get("CID"))).projection(fields(include("NAME"),excludeId())).iterator();  
   		if(mongoCursorB.hasNext()){
   		   docB=mongoCursorB.next();
   		}
   		%>
   		<td><%=docB.get("NAME") %></td>
   		<%
   		MongoCollection<Document> collectionC = db.getCollection("teacher");
   		MongoCursor<Document> mongoCursorC = collectionC.find(eq("TID",doc.get("TID"))).projection(fields(include("NAME"),excludeId())).iterator();  
   		if(mongoCursorC.hasNext()){
   		   docC=mongoCursorC.next();
   		}
   		%>		
   		<td><%=docC.get("NAME") %></td>
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
var XMLHttpReq; 
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
	var TID=$("#TID").val();
	createXMLHttpRequest();  
    var url = "search1.jsp?TID="+TID+"";  
    XMLHttpReq.open("GET", url, true);  
    XMLHttpReq.onreadystatechange = processResponse;//指定响应函数  
    XMLHttpReq.send(null);
}


function processResponse() {  
    if (XMLHttpReq.readyState == 4) { // 判断对象状态  
        if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息  
        	document.getElementById("div1").innerHTML=XMLHttpReq.responseText;
        } else { 
            window.alert("您所请求的页面有异常。");  
        }  
    }  
} 

function addStudentCourse(){
	var CID=$("#CID").val();
	createXMLHttpRequest();  
    var url = "search1.jsp?TID="+TID+"";  
    XMLHttpReq.open("GET", url, true);  
    XMLHttpReq.onreadystatechange = processResponse;//指定响应函数  
    XMLHttpReq.send(null);
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
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
</head>
<body>
<%
response.setContentType("text/html;charset=utf-8");  
request.setCharacterEncoding("utf-8");

long SID=Long.parseLong(request.getParameter("SID"));
int CID=Integer.parseInt(request.getParameter("CID"));

Document docX=null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collectionX = db.getCollection("teacher_course");
MongoCursor<Document> mongoCursorX = collectionX.find(eq("CID",CID)).projection(fields(include("TID"),excludeId())).iterator();  
	if(mongoCursorX.hasNext()){
	   docX=mongoCursorX.next();
	}
	
MongoCollection<Document> collection = db.getCollection("student_course");
Document doc = new Document("SID", SID)
.append("CID", CID)
.append("SCORE", null)
.append("TID",docX.get("TID"));
collection.insertOne(doc);
%>
</body>
</html>
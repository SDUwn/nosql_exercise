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
String CID=request.getParameter("CID");
String NAME=request.getParameter("NAME");
String FCID=request.getParameter("FCID");
int CREDIT=Integer.parseInt(request.getParameter("CREDIT").toString());

MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("course");
Document doc = new Document("CID", CID)
.append("NAME", NAME)
.append("FCID", FCID)
.append("CREDIT",CREDIT);
collection.insertOne(doc);
%>
<jsp:forward page="4_3.jsp"></jsp:forward>
</body>
</html>
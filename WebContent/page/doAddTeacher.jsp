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
String TID=request.getParameter("TID");
String NAME=request.getParameter("NAME");
String SEX=request.getParameter("SEX");
int AGE=Integer.parseInt(request.getParameter("AGE").toString());
String DNAME=request.getParameter("DNAME");

MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("teacher");
Document doc = new Document("TID", TID)
.append("NAME", NAME)
.append("SEX", SEX)
.append("AGE", AGE)
.append("DNAME",DNAME);
collection.insertOne(doc);
%>
<jsp:forward page="4_2.jsp"></jsp:forward>
</body>
</html>
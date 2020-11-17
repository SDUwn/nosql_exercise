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
<title>Insert title here</title>
</head>
<body>
<%
response.setContentType("text/html;charset=utf-8");  
request.setCharacterEncoding("utf-8");
String SID=request.getParameter("SID");
String NAME=request.getParameter("NAME");
String SEX=request.getParameter("SEX");
int AGE=Integer.parseInt(request.getParameter("AGE").toString());
String BIRTHDAY=request.getParameter("BIRTHDAY");
String DNAME=request.getParameter("DNAME");
String CLASS=request.getParameter("CLASS");

MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student");
Document doc = new Document("SID", SID)
.append("NAME", NAME)
.append("SEX", SEX)
.append("AGE", AGE)
.append("BIRTHDAY",BIRTHDAY)
.append("DNAME",DNAME)
.append("CLASS",CLASS);
collection.insertOne(doc);
%>
<jsp:forward page="4_1.jsp"></jsp:forward>
</body>
</html>
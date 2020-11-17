<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Dbutil"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="static com.mongodb.client.model.Filters.*"%>
<%@page import="com.mongodb.BasicDBObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
response.setContentType("text/html;charset=utf-8");  
request.setCharacterEncoding("utf-8");
int TID=Integer.parseInt(request.getParameter("TID"));

int TID1=Integer.parseInt(request.getParameter("TID1"));
String NAME1=request.getParameter("NAME1");
String SEX1=request.getParameter("SEX1");
int AGE1=Integer.parseInt(request.getParameter("AGE1"));
String DNAME1=request.getParameter("DNAME1");

MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("teacher");
collection.updateMany(eq("TID",TID),new Document("$set",new Document("NAME",NAME1).append("SEX", SEX1).append("AGE", AGE1).append("DNAME",DNAME1)));
%>
</body>
<jsp:forward page="4_2.jsp"></jsp:forward>
</html>  
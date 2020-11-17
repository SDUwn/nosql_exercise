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
<title>Insert title here</title>
</head>
<body>
<%
long SID=Long.parseLong(request.getParameter("SID"));
int CID=Integer.parseInt(request.getParameter("CID"));
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student_course");
collection.deleteOne(and(eq("SID",SID),eq("CID",CID)));

%>
</body>
<jsp:forward page="4_4.jsp"></jsp:forward>
</html>
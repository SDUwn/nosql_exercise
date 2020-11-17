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
int CID=Integer.parseInt(request.getParameter("CID"));
String NAME=request.getParameter("NAME");
int FCID=Integer.parseInt(request.getParameter("FCID"));
String CREDIT=request.getParameter("CREDIT");
//System.out.println(CID+"|"+NAME+"|"+FCID+"|"+CREDIT);

int CID1=Integer.parseInt(request.getParameter("CID1"));
String NAME1=request.getParameter("NAME1");
int FCID1=Integer.parseInt(request.getParameter("FCID1"));
String CREDIT1=request.getParameter("CREDIT1");
System.out.println(CID1+"|"+NAME1+"|"+FCID1+"|"+CREDIT1);

MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("course");
collection.updateMany(eq("CID",CID),new Document("$set",new Document("CREDIT",CREDIT1).append("NAME", NAME1).append("FCID", FCID1)));
%>
</body>
<jsp:forward page="4_3.jsp"></jsp:forward>
</html>  
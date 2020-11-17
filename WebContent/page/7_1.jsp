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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>找出平均成绩排名前10的学生</title>
</head>
<body>
<%
Document doc;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("student_course");

//Document sub_match = new Document();
//sub_match.put("appId", 1);
//sub_match.put("leaveTime", new Document("$gt", 1).append("$lt", 1));
Document sub_group = new Document();
sub_group.put("_id", "SID");
sub_group.put("count", new Document("$avg", 1));
//Document match = new Document("$match", sub_match);
Document group = new Document("$group", sub_group);
Document sort = new Document("$sort", new Document("_id", 1));
List<Document> aggregateList = new ArrayList<Document>();
//aggregateList.add(match);
aggregateList.add(group);
aggregateList.add(sort);
AggregateIterable<Document> resultset = collection.aggregate(aggregateList);
MongoCursor<Document> cursor = resultset.iterator();
while(cursor.hasNext()) {
	doc = cursor.next();
	System.out.println(doc.toJson());
}
%>
</body>
</html>
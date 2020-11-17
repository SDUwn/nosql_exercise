<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@ page import="java.io.IOException"%>
<%@page import="com.Dbutil"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="org.apache.poi.ss.usermodel.Cell" %>
<%@page import="org.apache.poi.ss.usermodel.Row" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
String File=request.getParameter("File").toString();
FileInputStream inputStream = new FileInputStream(File);
Workbook workbook = null;
MongoDatabase db=new Dbutil().getdb();
MongoCollection<Document> collection = db.getCollection("course");
try {
	workbook = new HSSFWorkbook(inputStream);
} catch (IOException e) {
	e.printStackTrace();
}
List<Document> documents = new ArrayList<Document>();
List<String> fieldList = new ArrayList<String>();
Sheet sheet = workbook.getSheetAt(0);
Row row0 = sheet.getRow(0);
for (Cell cell : row0) {
	fieldList.add(cell.toString());
}
int rows = sheet.getLastRowNum() + 1;
int cells = fieldList.size();
for (int i = 1; i < rows; i++) {
	Row row = sheet.getRow(i);
	Document document = new Document();
	for (int j = 0; j < cells; j++) {
		Cell cell = row.getCell(j);
		document.append(fieldList.get(j), cell.toString());
	}
	documents.add(document);
}
collection.insertMany(documents);
%>
<jsp:forward page="4_3.jsp"></jsp:forward>
</body>
</html>
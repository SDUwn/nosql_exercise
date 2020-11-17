package com;


//import org.apache.poi.ss.usermodel.Workbook;

//import java.util.ArrayList;
//import java.util.List;

//import org.apache.poi.ss.usermodel.Cell;
//import org.apache.poi.ss.usermodel.Row;
//import org.apache.poi.ss.usermodel.Sheet;
//import org.bson.Document;
import com.mongodb.MongoClient;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
//import com.mongodb.client.model.Filters;
public class Dbutil 
{		
	public MongoDatabase getdb() {
		@SuppressWarnings("resource")
		MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
	    MongoDatabase db = mongoClient.getDatabase("work");  
	    System.out.println("Connect to database successfully");
		return db;
	}
	public static void main(String[] args) {
		
	}
}

package cn.example;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Collection;

public class BookDB {
	/**
	 * instruction:模拟数据库，创建映射关系
	 */
	private static Map<String,Book> books=new LinkedHashMap<String,Book>();
	static{//静态代码块
		books.put("1", new Book("1","JavaWeb开发",100.0));
		books.put("2", new Book("2","JDBC开发",200.0));
		books.put("3", new Book("3","Java基础开发",300.0));
		books.put("4", new Book("4","Structs开发",400.0));
		books.put("5", new Book("5","Spring开发",500.0));
	}
	//获得所有图书
	public static Collection<Book> getAll(){
		return books.values();
	}
	//根据指定id获得图书
	public static Book getBook(String id){
		return books.get(id);
	}
}

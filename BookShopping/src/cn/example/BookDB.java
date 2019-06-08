package cn.example;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Collection;

public class BookDB {
	/**
	 * instruction:ģ�����ݿ⣬����ӳ���ϵ
	 */
	private static Map<String,Book> books=new LinkedHashMap<String,Book>();
	static{//��̬�����
		books.put("1", new Book("1","JavaWeb����",100.0));
		books.put("2", new Book("2","JDBC����",200.0));
		books.put("3", new Book("3","Java��������",300.0));
		books.put("4", new Book("4","Structs����",400.0));
		books.put("5", new Book("5","Spring����",500.0));
	}
	//�������ͼ��
	public static Collection<Book> getAll(){
		return books.values();
	}
	//����ָ��id���ͼ��
	public static Book getBook(String id){
		return books.get(id);
	}
}

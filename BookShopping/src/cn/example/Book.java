package cn.example;

import java.io.Serializable;

public class Book implements Serializable{
/**
 * instruction:封装一个图书类
 * param:图书编号->id(String)、图书名称->name(String)、图书价格->price(double)
 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private double price;
	
	public Book(){
		
	}
	
	public Book(String id,String name,double price){
		this.id = id;
		this.name = name;
		this.price = price;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}

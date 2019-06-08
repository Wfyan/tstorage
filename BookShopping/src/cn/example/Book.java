package cn.example;

import java.io.Serializable;

public class Book implements Serializable{
/**
 * instruction:��װһ��ͼ����
 * param:ͼ����->id(String)��ͼ������->name(String)��ͼ��۸�->price(double)
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

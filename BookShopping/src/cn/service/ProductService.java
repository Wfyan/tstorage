package cn.service;

import java.sql.SQLException;

import cn.dao.ProductDao;
import cn.vo.Product;

public class ProductService {
	private ProductDao dao = new ProductDao();
	
	public Product find(String id){
		try{
			Product pro = dao.findById(id);
			if(pro!=null){
				return pro;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException ne){
			ne.printStackTrace();
		}
		return null;
	}
}

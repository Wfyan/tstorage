package cn.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cn.service.DBConnection;
import cn.vo.Product;

public class ProductDao {
		public Product findById(String id) throws SQLException,ClassNotFoundException{
			Connection conn = DBConnection.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = null;
			String sql = "select * from products where id='"+id+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Product pro = new Product();
				pro.setId(rs.getString(1));
				pro.setName(rs.getString(2));
				pro.setPrice(rs.getDouble(3));
				return pro;
			}
			return null;
		}
}

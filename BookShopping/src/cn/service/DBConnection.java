package cn.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * @author tiger
 * @function getConnection()建立数据连接，release()释放数据库资源
 */
public class DBConnection {
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://127.0.0.1:3306/bookshop";
		String username = "root";
		String password = "201611701127";
		Connection conn = DriverManager.getConnection(url,username,password);
		return conn;
	}
	
	public static void release(Statement stmt,Connection conn){
		if(stmt!=null){
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			stmt = null;
		}
		if(conn!=null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			conn = null;
		}
	}
	
	public static void release(ResultSet rs,Statement stmt,Connection conn){
		if(rs!=null){
			try{
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			rs = null;
		}
		release(stmt,conn);
	}
}

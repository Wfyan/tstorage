package cn.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cn.service.DBConnection;
import cn.vo.User;
/**
 * 
 * @author tiger
 * @function 封装用户模块对数据库的操作。addUser()增加,deleteUser()删除,findByUsernameAndPass()查询
 */
public class UserDao {
	public int addUser(User user) throws SQLException,ClassNotFoundException{
		Connection conn = DBConnection.getConnection();
		Statement stmt = conn.createStatement();
		String sql = "Insert into user(usernaem,password,phone,email) value('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getPhone()+"','"+user.getMail()+"')";
		int n = stmt.executeUpdate(sql);
		DBConnection.release(stmt, conn);
		return n;
	}
	public int deleteUser(String username,String password) throws SQLException,ClassNotFoundException{
		Connection conn = DBConnection.getConnection();
		Statement stmt = conn.createStatement();
		String sql = "Delete from user where username='"+username+"' and password='"+password+"'";
		int n = stmt.executeUpdate(sql);
		DBConnection.release(stmt, conn);
		return n;
	}
	public User findByUsernameAndPass(String name,String password) throws SQLException,ClassNotFoundException{
		Connection conn = DBConnection.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = null;
		String sql = "select * from user where username='"+name+"' and password='"+password+"'";
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			User user = new User();
			user.setId(rs.getInt(1));
			user.setUsername(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(5));
			user.setMail(rs.getString(6));
			return user;
		}
		return null;
	}
}

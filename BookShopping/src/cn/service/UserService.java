package cn.service;

import java.sql.SQLException;

import cn.dao.UserDao;
import cn.vo.User;

/**
 * 
 * @author tiger
 * @function 此类通过调用UserDao实现对数据库的操作。登录，注册，注销
 */
public class UserService {
	private UserDao dao = new UserDao();
	
	public User login(String username,String password){
		try{
			User user = dao.findByUsernameAndPass(username, password);
			if(user!=null){
				return user;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException ne){
			ne.printStackTrace();
		}
		return null;
	}
	
	public void regist(User user){
		try{
			int flag = dao.addUser(user);
			if(flag!=0) System.out.println("Success");
			else System.out.println("Fail");
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException ne){
			ne.printStackTrace();
		}
	}
	
	public void cancel(String username,String password){
		try{
			dao.deleteUser(username, password);
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException ne){
			ne.getMessage();
		}
	}
}

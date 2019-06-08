package cn.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.service.UserService;
import cn.vo.User;

public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void  doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		//获取用户输入的用户名和密码
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		//调用Service实现登录
		UserService service = new UserService();
		User user = service.login(username, password);
		if(user!=null){
			//登录成功，将用户信息存储到session
			req.getSession().setAttribute("user",user);
			//这里可以实现页面的分流，如果有权限
			resp.sendRedirect(req.getContextPath() + "/client/index.jsp");
		}else{
			resp.sendRedirect(req.getContextPath() + "/error.jsp");
		}
	}
}

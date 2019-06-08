package cn.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		//获取Session对象
		HttpSession session = req.getSession();
		//使session无效
		session.invalidate();
		//页面重定向
		resp.sendRedirect(req.getContextPath()+"/client/index.jsp");
	}
}

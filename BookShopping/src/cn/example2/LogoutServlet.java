package cn.example2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		//将Session对象中的User对象移除
		request.getSession().removeAttribute("user");
		response.sendRedirect("/BookShopping/IndexServlet");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		doGet(request,response);
	}
}

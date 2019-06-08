package cn.example2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexServlet extends HttpServlet {
	/**
	 * 创建登录首页
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		//获取或创建保存用户信息的Session对象
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			response.getWriter().print("您还没有登录，请<a href='/BookShopping/login.html'>登录</a>");
		}else{
			response.getWriter().print("您已登录，欢迎您，"+user.getUsername());
			response.getWriter().print("<a href='/BookShopping/LogoutServlet'>退出</a>");
			//创建Cookie存放Session标识
			Cookie cookie = new Cookie("JSESSIONID",session.getId());
			cookie.setMaxAge(60*30);
			cookie.setPath("/Bookshopping");
			response.addCookie(cookie);
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		doGet(request,response);
	}
}

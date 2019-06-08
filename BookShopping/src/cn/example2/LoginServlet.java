package cn.example2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		response.setContentType("text/html;charset=utf-8");
		//从请求获取数据
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//用户提交的验证码
		String checkcode = request.getParameter("check_code");
		//Session保存的验证码
		String savecode = (String)request.getSession().getAttribute("check_code");
		
		//System.out.println(username);
		PrintWriter out = response.getWriter();
		//要跟数据库连接，获得数据，现在假设用户名是‘itcast’，密码是‘123’
		if(("itcast").equals(username)&&("123").equals(password)&&checkcode.equals(savecode)){
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			request.getSession().setAttribute("user", user);
			response.sendRedirect("/BookShopping/IndexServlet");
		}else if(checkcode.equals(savecode)){
			out.write("用户名或密码错误");
		}else{
			out.write("验证码错误");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		doGet(request,response);
	}
}

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
		//�������ȡ����
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//�û��ύ����֤��
		String checkcode = request.getParameter("check_code");
		//Session�������֤��
		String savecode = (String)request.getSession().getAttribute("check_code");
		
		//System.out.println(username);
		PrintWriter out = response.getWriter();
		//Ҫ�����ݿ����ӣ�������ݣ����ڼ����û����ǡ�itcast���������ǡ�123��
		if(("itcast").equals(username)&&("123").equals(password)&&checkcode.equals(savecode)){
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			request.getSession().setAttribute("user", user);
			response.sendRedirect("/BookShopping/IndexServlet");
		}else if(checkcode.equals(savecode)){
			out.write("�û������������");
		}else{
			out.write("��֤�����");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		doGet(request,response);
	}
}

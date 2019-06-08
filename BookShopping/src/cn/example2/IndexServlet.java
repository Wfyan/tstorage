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
	 * ������¼��ҳ
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		//��ȡ�򴴽������û���Ϣ��Session����
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			response.getWriter().print("����û�е�¼����<a href='/BookShopping/login.html'>��¼</a>");
		}else{
			response.getWriter().print("���ѵ�¼����ӭ����"+user.getUsername());
			response.getWriter().print("<a href='/BookShopping/LogoutServlet'>�˳�</a>");
			//����Cookie���Session��ʶ
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

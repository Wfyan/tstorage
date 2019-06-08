package cn.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PurchaseServlet extends HttpServlet{
	/**
	 * function:�û�����ͼ�����Ϣ���浽Session�����У�Ȼ��ͨ��Session���ݸ�CartServlet
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//��ȡ�û��������Ʒ
		String id = request.getParameter("id");
		if(id==null){
			String url = "/Bookshopping/ListBookServlet";
			response.sendRedirect(url);
			return;
		}
		Book book = BookDB.getBook(id);
		//����û�������Session����
		HttpSession session = request.getSession();
		List<Book> cart = (List)session.getAttribute("cart");
		if(cart == null){
			cart = new ArrayList<Book>();
			session.setAttribute("cart", cart);
		}
		//����Ʒ���빺�ﳵ��
		cart.add(book);
		//����Cookie���Session��ʶ
		Cookie cookie = new Cookie("JSESSIONID",session.getId());
		cookie.setMaxAge(60*30);
		cookie.setPath("/BookShopping");
		response.addCookie(cookie);
		//�ض��򵽹��ﳵҳ��
		String url = "/BookShopping/CartServlet";
		String newurl=response.encodeRedirectURL(url);
		response.sendRedirect(newurl);
	}
}

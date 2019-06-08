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
	 * function:用户购买图书的信息保存到Session对象中；然后通过Session传递给CartServlet
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		//获取用户购买的商品
		String id = request.getParameter("id");
		if(id==null){
			String url = "/Bookshopping/ListBookServlet";
			response.sendRedirect(url);
			return;
		}
		Book book = BookDB.getBook(id);
		//获得用户创建的Session对象
		HttpSession session = request.getSession();
		List<Book> cart = (List)session.getAttribute("cart");
		if(cart == null){
			cart = new ArrayList<Book>();
			session.setAttribute("cart", cart);
		}
		//将商品放入购物车中
		cart.add(book);
		//创建Cookie存放Session标识
		Cookie cookie = new Cookie("JSESSIONID",session.getId());
		cookie.setMaxAge(60*30);
		cookie.setPath("/BookShopping");
		response.addCookie(cookie);
		//重定向到购物车页面
		String url = "/BookShopping/CartServlet";
		String newurl=response.encodeRedirectURL(url);
		response.sendRedirect(newurl);
	}
}

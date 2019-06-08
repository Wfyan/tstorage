package cn.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ListBookServlet extends HttpServlet{
	/**
	 * 显示所有可购图书的列表
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Collection<Book> books = BookDB.getAll();
		out.write("本站提供的图书有：<br />");
		for(Book book:books){
			String url = "/BookShopping/PurchaseServlet?id=" + book.getId();
			//HttpSession s=request.getSession();
			String newUrl=response.encodeRedirectURL(url);
			out.write(book.getName() + "<a href='" + newUrl + "'>点击购买</a><br>");
		}
	}
}

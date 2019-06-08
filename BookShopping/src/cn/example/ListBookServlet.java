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
	 * ��ʾ���пɹ�ͼ����б�
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Collection<Book> books = BookDB.getAll();
		out.write("��վ�ṩ��ͼ���У�<br />");
		for(Book book:books){
			String url = "/BookShopping/PurchaseServlet?id=" + book.getId();
			//HttpSession s=request.getSession();
			String newUrl=response.encodeRedirectURL(url);
			out.write(book.getName() + "<a href='" + newUrl + "'>�������</a><br>");
		}
	}
}

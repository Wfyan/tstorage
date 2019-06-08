package cn.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartServlet extends HttpServlet{
	/**
	 * 展示用户已购买的图书信息
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//引入用户购物车
		List<Book> cart = null;
		//标记用户是否买了商品
		boolean purFlag = true;
		//获得用户的Session对象
		HttpSession session = request.getSession();
		if(session == null){
			purFlag = false;
		}else{
			cart = (List)session.getAttribute("cart");
			if(cart == null) purFlag=false;
		}
		if(!purFlag){
			out.write("对不起！你没有购买任何商品");
		}else{
			out.write("您购买的图书有：<br />");
			for(Book book:cart){
				out.write(book.getName()+"<br />");
			}
		}
	}
}

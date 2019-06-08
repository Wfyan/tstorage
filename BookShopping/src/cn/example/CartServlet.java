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
	 * չʾ�û��ѹ����ͼ����Ϣ
	 */
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//�����û����ﳵ
		List<Book> cart = null;
		//����û��Ƿ�������Ʒ
		boolean purFlag = true;
		//����û���Session����
		HttpSession session = request.getSession();
		if(session == null){
			purFlag = false;
		}else{
			cart = (List)session.getAttribute("cart");
			if(cart == null) purFlag=false;
		}
		if(!purFlag){
			out.write("�Բ�����û�й����κ���Ʒ");
		}else{
			out.write("�������ͼ���У�<br />");
			for(Book book:cart){
				out.write(book.getName()+"<br />");
			}
		}
	}
}

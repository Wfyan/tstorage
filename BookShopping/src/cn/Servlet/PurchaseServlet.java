package cn.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.service.ProductService;
import cn.vo.Product;

public class PurchaseServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		int num = Integer.parseInt(req.getParameter("pre_num"));
		String id = req.getParameter("Id");
		ProductService service = new ProductService();
		Product pro = service.find(id);
		if(pro!=null){
			//登录成功，将用户信息存储到session
			pro.setNum(num);
			req.getSession().setAttribute("cart",pro);
			resp.sendRedirect(req.getContextPath() + "/client/productInfo.jsp");
		}else{
			resp.sendRedirect(req.getContextPath() + "/error.jsp");
		}
		/*HttpSession session = req.getSession();
		List<Product> cart = (List)session.getAttribute("cart");
		if(cart == null){
			cart = new ArrayList<Product>();
			session.setAttribute("cart", cart);
		}
		cart.add(pro);
		Cookie cookie = new Cookie("JSESSIONID",session.getId());
		cookie.setMaxAge(60*30);
		cookie.setPath("/BookShopping");
		resp.addCookie(cookie);*/

		/*String url = "/BookShopping/client/shoppingCart.jsp";
		String newurl=resp.encodeRedirectURL(url);
		resp.sendRedirect(newurl);*/
	}
}

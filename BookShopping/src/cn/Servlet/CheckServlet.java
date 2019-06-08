package cn.Servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CheckServlet extends HttpServlet {
	private static int WIDTH = 60;
	private static int HEIGHT = 20;
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {

		HttpSession session = req.getSession();
		resp.setContentType("image/jpeg");
		ServletOutputStream sos = resp.getOutputStream();

		resp.setHeader("Pragma", "No-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);

		BufferedImage image = new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();

		char[] rands = generateCheckCode();

		drawBackground(g);
		drawRands(g,rands);

		g.dispose();

		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		ImageIO.write(image, "JPEG", bos);
		byte[] buf = bos.toByteArray();
		resp.setContentLength(buf.length);
		sos.write(buf);
		bos.close();
		sos.close();

		session.setAttribute("check_code",new String(rands));
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
		doGet(req,resp);
	}

	private char[] generateCheckCode(){
		char[] rands = new char[4];
		String chars = "0123456789abcdefghijklmnopqrstuvwxyz";
		for(int i=0;i<4;i++){
			int rand = (int)(Math.random()*36);
			rands[i] = chars.charAt(rand);
		}
		return rands;
	}
	private void drawBackground(Graphics g){
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, WIDTH, HEIGHT);

		for(int i=0;i<120;i++){
			int x = (int)(Math.random()*WIDTH);
			int y = (int)(Math.random()*HEIGHT);
			int red = (int)(Math.random()*255);
			int green = (int)(Math.random()*255);
			int blue = (int)(Math.random()*255);
			g.setColor(new Color(red,green,blue));
			g.drawOval(x,y,1,0);
		}
	}
	private void drawRands(Graphics g,char[] rands){
		g.setColor(new Color(0x000));
		g.setFont(new Font(null,Font.ITALIC|Font.BOLD,18));

		g.drawString(""+rands[0], 1, 17);
		g.drawString(""+rands[1], 16, 15);
		g.drawString(""+rands[2], 32, 16);
		g.drawString(""+rands[3], 46, 18);
	}
}

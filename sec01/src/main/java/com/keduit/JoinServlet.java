package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String rrnum1 = request.getParameter("rrnum1");
		String rrnum2 = request.getParameter("rrnum2");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String repwd = request.getParameter("repwd");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String post = request.getParameter("post");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		out.println("<html><head><body>");
		out.println("당신이 입력한 자료입니다."+"<br>");
		out.println("이름 :"+name+"<br>");
		out.println("주민번호 :"+rrnum1+"-"+rrnum2+"<br>");
		out.println("아이디 :"+id+"<br>");
		out.println("비밀번호 :"+pwd+"<br>");
		out.println("비밀번호 확인 :"+repwd+"<br>");
		out.println("이메일 :"+email1+"@"+email2+"<br>");
		out.println("우편번호 :"+post+"<br>");
		out.println("주소 :"+addr+"<br>");
		out.println("핸드폰번호 :"+phone+"<br>");
		out.println("</html></head></body>");
		
		out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

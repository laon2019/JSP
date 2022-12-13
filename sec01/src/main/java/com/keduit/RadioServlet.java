package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RadioServlet
 */
@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String gender = request.getParameter("gender");
		String mail = request.getParameter("chk-mail");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><body>");
		out.println("당신이 입력한 자료입니다."+"<hr>");
		out.println("성별 : <b>");
		out.println(gender);
		out.println("</b><br>메일 : <b>");
		out.println(mail);
		out.println("</b><br>가입 인사 : <b><pre>");
		out.println(content);
		out.println("<br></pre><a href='javascript:history.go(-1)'>다시입력</a>");
		out.println("</html></head></body>");
	}

}

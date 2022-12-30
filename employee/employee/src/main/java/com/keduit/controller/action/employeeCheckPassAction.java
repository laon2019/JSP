package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.employeeDAO;
import com.keduit.dto.employeeVO;

public class employeeCheckPassAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=null;
		
		String num=request.getParameter("num");
		String pass=request.getParameter("pass");
		
		employeeDAO eDAO=employeeDAO.getInstance();
		employeeVO eVO=eDAO.selectOneBoardByNum(num);
		System.out.println(eVO);
		if(eVO.getPass().equals(pass)) {
			url ="/employee/checkSuccess.jsp";
			
		}else {
			url="/employee/employeeCheckPass.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}

		RequestDispatcher dispatcher =request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
			
	}

}

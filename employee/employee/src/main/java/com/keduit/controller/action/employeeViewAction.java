package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.employeeDAO;
import com.keduit.dto.employeeVO;

public class employeeViewAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employee/employeeView.jsp";
		
		String num = request.getParameter("num");
		
		
		employeeDAO eDAO = employeeDAO.getInstance();
		employeeVO eVO = eDAO.selectOneBoardByNum(num);
		request.setAttribute("employee", eVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}

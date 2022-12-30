package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.employeeDAO;

public class employeeDeleteAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		employeeDAO eDAO = employeeDAO.getInstance();
		eDAO.deleteBoard(num);
		new employeeListAction().excute(request, response);
		
	}

}

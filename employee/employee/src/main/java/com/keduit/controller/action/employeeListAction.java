package com.keduit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.employeeDAO;
import com.keduit.dto.employeeVO;

public class employeeListAction implements Action{
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/employee/employeeList.jsp";
		employeeDAO eDAO = employeeDAO.getInstance();
		List<employeeVO> employeeList = eDAO.selectAllBoards();
		request.setAttribute("employeeList", employeeList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}}

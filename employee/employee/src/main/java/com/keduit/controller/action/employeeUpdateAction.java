package com.keduit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.employeeDAO;
import com.keduit.dto.employeeVO;

public class employeeUpdateAction implements Action {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		employeeVO eVO = new employeeVO();
		eVO.setNum(Integer.parseInt(request.getParameter("num")));
		eVO.setId(request.getParameter("id"));
		eVO.setPass(request.getParameter("pass"));
		eVO.setName(request.getParameter("name"));
		eVO.setGender(request.getParameter("gender"));
		eVO.setLev(request.getParameter("lev"));
		eVO.setPhone(request.getParameter("phone"));
		eVO.setEnter(request.getParameter("enter"));
	
		employeeDAO eDAO = employeeDAO.getInstance();
		eDAO.updateBoard(eVO);
		new employeeListAction().excute(request, response);
		
	}

}

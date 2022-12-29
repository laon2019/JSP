package com.keduit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.listDAO;
import com.keduit.dto.listVO;

public class BoardListAction implements Action{
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/boardList.jsp";
		listDAO lDAO = listDAO.getInstance();
		List<listVO> boardList = lDAO.selectAllBoards();
		request.setAttribute("boardList", boardList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}}

package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.employeeVO;
import util.DBManager;

public class employeeDAO {
	private employeeDAO() {}
	private static employeeDAO instance = new employeeDAO();
	
	public static employeeDAO getInstance() {
		return instance;
	}
	
	public List<employeeVO> selectAllBoards(){
		String sql = "select * from employee order by num desc";
		List<employeeVO> list = new ArrayList<employeeVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		employeeVO eVO = null;
		
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				eVO = new employeeVO();
				
				eVO.setNum(rs.getInt("num"));
				eVO.setId(rs.getString("id"));
				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setGender(rs.getString("gender"));
				eVO.setLev(rs.getString("lev"));
				eVO.setPhone(rs.getString("phone"));
				eVO.setEnter(rs.getString("enter"));
			
				list.add(eVO);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,stmt,rs);
		}
		
		return list;
	}
	
	
	public void insertBoard(employeeVO eVO) {
		String sql = "insert into employee (" + "id, pass, name, gender, lev, phone, enter) " 
										+ "values(?, ?, ?, ?, ?, ?, ?)"; 
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			System.out.println("eVO=======> " + eVO);
			pstmt.setString(1, eVO.getId());
			pstmt.setString(2, eVO.getPass());
			pstmt.setString(3, eVO.getName());
			pstmt.setString(4, eVO.getGender());
			pstmt.setString(5, eVO.getLev());
			pstmt.setString(6, eVO.getPhone());
			pstmt.setString(7, eVO.getEnter());
			
			System.out.println(eVO.getPass() + "insertemployee");
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	//게시글 상세보기
	public employeeVO selectOneBoardByNum(String num) {
		employeeVO eVO= null;
		String sql = "select * from employee where num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				eVO = new employeeVO();
				eVO.setNum(rs.getInt("num"));
				eVO.setId(rs.getString("id"));
				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setGender(rs.getString("gender"));
				eVO.setLev(rs.getString("lev"));
				eVO.setPhone(rs.getString("phone"));
				eVO.setEnter(rs.getString("enter"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return eVO;
	}
	
	
	
	//게시글 수정
	public void updateBoard(employeeVO bVO) {
		String sql = "update employee set id=?, pass=?, name=?, gender=?, lev=?, phone=?, enter=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVO.getId());
			pstmt.setString(2, bVO.getPass());
			pstmt.setString(3, bVO.getName());
			pstmt.setString(4, bVO.getGender());
			pstmt.setString(5, bVO.getLev());
			pstmt.setString(6, bVO.getPhone());
			pstmt.setString(7, bVO.getEnter());
			pstmt.setInt(8, bVO.getNum());
		
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	
	
	public void deleteBoard(String num) {
		String sql = "delete from employee where num=?";
		Connection conn = null;
		PreparedStatement pstmt= null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}

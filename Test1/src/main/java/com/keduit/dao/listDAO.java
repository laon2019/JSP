package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.listVO;
import util.DBManager;

public class listDAO {
	private listDAO() {}
	private static listDAO instance = new listDAO();
	
	public static listDAO getInstance() {
		return instance;
	}
	
	public List<listVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		List<listVO> list = new ArrayList<listVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		listVO lVO = null;
		
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				lVO = new listVO();
				
				lVO.setId(rs.getString("id"));
				lVO.setPass(rs.getString("pass"));
				lVO.setName(rs.getString("name"));
				lVO.setGender(rs.getString("gender"));
				lVO.setLev(rs.getString("lev"));
				lVO.setPhone(rs.getString("phone"));
				list.add(lVO);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,stmt,rs);
		}
		
		return list;
	}
}
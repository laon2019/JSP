package com.keduit.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
   private MemberDAO() {
      
   }
   
   private static MemberDAO instance = new MemberDAO();
   
   public static MemberDAO getInstance() {
      return instance;
   }
   
   public Connection getConnection() throws Exception{
      Connection conn = null;
      Context initContext = new InitialContext();
      Context envContext = (Context)initContext.lookup("java:/comp/env");
      DataSource ds = (DataSource)envContext.lookup("jdbc/TestDB");
      conn = ds.getConnection();
      return conn;
      
   }
   public int userCheck(String userid, String pwd) {
	   int result = -1;
	   String sql = "select pwd from member where userid=?";
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   try {
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)){
				return 1;
			} else return 0;
		}
	   } catch (Exception e) {
		e.printStackTrace();
	   }finally {
		   try {
			   if(rs != null) {rs.close();}
			   if(pstmt != null) {pstmt.close();}
			   if(conn != null) {conn.close();}
			   } catch (Exception e) {
				e.printStackTrace();
			}
		   }
	   
	   return result;
   }
}
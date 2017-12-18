package com.gohere.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.gohere.util.DBConnector;

public class MemberDAO {
	public int deleteReason(String reason,String id)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert member into values(?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);
		st.setString(2, reason);
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
	}
	
	public int delete(String email, String password)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "delete member where email=? and password=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		st.setString(2, password);
		int result= st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
		
	}
	public MemberDTO info(String id)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select * from member where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);
		ResultSet rs = st.executeQuery();
		MemberDTO memberDTO =null;
		if(rs.next()) {
			memberDTO = new MemberDTO();
			memberDTO.setName(rs.getString("name"));
			memberDTO.setEmail(rs.getString("email"));
			memberDTO.setPassword(rs.getString("password"));
			memberDTO.setPhone(rs.getString("phone"));
			memberDTO.setPoint(rs.getInt("point"));
		}
		DBConnector.disConnect(st, con, rs);
		
		return memberDTO;
	}
	
	public int recommend(MemberDTO memberDTO)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "update member set point=point+5 where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getRecommend());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		
		return result;
		
	}
	
	public MemberDTO login(String email, String password)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select * from member where email=? and password=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		MemberDTO memberDTO = null;
		if(rs.next()) {
			memberDTO = new MemberDTO();
			memberDTO.setName(rs.getString("name"));
			memberDTO.setEmail(rs.getString("email"));
			memberDTO.setPassword(rs.getString("password"));
			memberDTO.setPoint(rs.getInt("point"));
		}
	
		DBConnector.disConnect(st, con, rs);
		
		return memberDTO;
	}
	
	public int idCheck(String id) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql="select id from member where id=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);
		ResultSet rs = st.executeQuery();
		String check = "";
		int result = 0;
		
		if(rs.next()) {
			check = rs.getString(1);
			result = 1;
		}
		
		DBConnector.disConnect(st, con, rs);
		
		return result;
	}
	
	public int join(MemberDTO memberDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into member values(?,?,?,?,?,0,sysdate)";
		PreparedStatement st = con.prepareStatement(sql);
	    st.setString(1, memberDTO.getEmail());
	    st.setString(2, memberDTO.getName());
	    st.setString(3, memberDTO.getPassword());
	    st.setString(4, memberDTO.getPhone());
	    st.setString(5, memberDTO.getRecommend());
	    
	    int result = st.executeUpdate();
	    
	    DBConnector.disConnect(st, con);
	    
	    return result;
	}

}

package com.gohere.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gohere.util.DBConnector;
import com.gohere.util.MakeRow;

public class MemberDAO {
	public void showGraph() throws Exception{
		
	}
	
	
	public String emailCheck(String email) throws Exception{
		Connection con = DBConnector.getConnect();
		String check="";
		String sql = "select email from memeber where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			check=rs.getString(1);
		}
		DBConnector.disConnect(st, con, rs);
		
		return check;
	}
	//회원리스트
	public ArrayList<MemberDTO> list() throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select * from member where email!='gohere@gohere.gohere' order by join_date desc";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		ArrayList<MemberDTO>ar = new ArrayList<>();
		while(rs.next()) {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setEmail(rs.getString("email"));
		memberDTO.setPhone(rs.getString("phone"));
		memberDTO.setName(rs.getString("name"));
		memberDTO.setJoin_date(rs.getString("join_date"));
		memberDTO.setPhone(rs.getString("phone"));
		memberDTO.setPoint(rs.getInt("point"));
		ar.add(memberDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}
	//정보수정
	public int update(MemberDTO memberDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "update member set name=?, password=?, phone=? where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getName());
		st.setString(2, memberDTO.getPassword());
		st.setString(3, memberDTO.getPhone());
		st.setString(4, memberDTO.getEmail());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
		
	}
	
	//삭제이유
	public int deleteReason(MemberDTO memberDTO)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into leave_member values(?,?,sysdate,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getEmail());
		st.setString(2, memberDTO.getReason());
		st.setString(3, memberDTO.getJoin_date());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
	}
	
	//삭제
	public int delete(MemberDTO memberDTO)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "delete member where email=? and password=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getEmail());
		st.setString(2, memberDTO.getPassword());
		int result= st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
		
	}
	
	//정보
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
	
	//추천인 포인트
	public int recommend(MemberDTO memberDTO)throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "update member set point=point+5 where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getRecommend());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		
		return result;
		
	}
	
	//로그인
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
			memberDTO.setPhone(rs.getString("phone"));
			memberDTO.setJoin_date(rs.getString("join_date"));
		}
	
		DBConnector.disConnect(st, con, rs);
		
		return memberDTO;
	}
	
	//비밀번호찾기
	public String searchPw(String email) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select password from member where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		String password="";
		if(rs.next()) {
			password=rs.getString("password");
		}
		DBConnector.disConnect(st, con, rs);
		return password;
	}
	
	//이메일찾기
	public String searchId(String name, String phone) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql="select email from member where name=? and phone=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, name);
		st.setString(2, phone);
		ResultSet rs = st.executeQuery();
		
		String email="";
		
		if(rs.next()) {
			email=rs.getString("email");
		}
		
		DBConnector.disConnect(st, con, rs);
		
		return email;
	}
	
	//가입
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

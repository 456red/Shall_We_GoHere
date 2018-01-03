package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gohere.util.DBConnector;

public class ReplyDAO {
	
	//Insert
	public int insert(ReplyDTO replyDTO, String email, String name) throws Exception{
		Connection con = DBConnector.getConnect();
		
		String sql = "insert into s_reply values(?,?,?,?,sysdate,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, replyDTO.getNum());
		st.setString(2, email);
		st.setString(3, name);
		st.setString(4, replyDTO.getContents());
		st.setInt(5, replyDTO.getP_num());
		int result = st.executeUpdate();
		
		DBConnector.disConnect(st, con);
		return result;
	}
	
	//Delete
	public int delete(int num) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "delete s_reply where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();
		
		DBConnector.disConnect(st, con);
		return result;
	}
	
	//Update
	public int update(ReplyDTO replyDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "update s_reply set contents=? where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, replyDTO.getContents());
		st.setInt(2, replyDTO.getNum());
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}
	
	//SelectList
	public ArrayList<ReplyDTO> selectList(int p_num, String b_name) throws Exception{
		ArrayList<ReplyDTO> list = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		if(b_name.equals("review")) {
		sql = "select * from s_reply where p_num = (select num p_num from s_review where num=?)";
		
		}else {
			sql = "select * from s_reply where p_num = (select num p_num from s_qna where num=?)";
			
		}
		
		st = con.prepareStatement(sql);
		st.setInt(1, p_num);
		rs = st.executeQuery();

		while(rs.next()) {
			ReplyDTO replyDTO = new ReplyDTO();
			replyDTO.setNum(rs.getInt("num"));
			replyDTO.setEmail(rs.getString("email"));
			replyDTO.setName(rs.getString("name"));
			replyDTO.setContents(rs.getString("contents"));
			replyDTO.setRp_date(rs.getDate("rp_date"));
			replyDTO.setP_num(rs.getInt("p_num"));
			list.add(replyDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return list;
	}

	//SelectOne
	public ReplyDTO selectOne(int num) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_reply where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		ReplyDTO replyDTO = null;
		if(rs.next()) {
			replyDTO = new ReplyDTO();
			replyDTO.setNum(rs.getInt("num"));
			replyDTO.setEmail(rs.getString("email"));
			replyDTO.setName(rs.getString("name"));
			replyDTO.setContents(rs.getString("contents"));
			replyDTO.setRp_date(rs.getDate("rp_date"));
			replyDTO.setP_num(rs.getInt("p_num"));
		}
		DBConnector.disConnect(st, con, rs);
		return replyDTO;
	}
	
	//GetNum
	public int getNum() throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select board_seq.nextval from dual";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		rs.next();
		int num = rs.getInt(1);

		DBConnector.disConnect(st, con, rs);
		return num;
	}

}

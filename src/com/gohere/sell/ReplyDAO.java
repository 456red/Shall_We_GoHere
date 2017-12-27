package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gohere.util.DBConnector;

public class ReplyDAO {
	
	//Insert
	public int insert(ReplyDTO replyDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into s_reply values(?,?,?,?,sysdate)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, replyDTO.getNum());
		st.setString(2, replyDTO.getEmail());
		st.setString(3, replyDTO.getName());
		st.setString(4, replyDTO.getContents());
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

}

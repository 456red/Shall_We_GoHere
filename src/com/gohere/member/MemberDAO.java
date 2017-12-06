package com.gohere.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.gohere.util.DBConnector;

public class MemberDAO {
	
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

}

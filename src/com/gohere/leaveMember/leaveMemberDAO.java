package com.gohere.leaveMember;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gohere.member.MemberDTO;
import com.gohere.util.DBConnector;

public class leaveMemberDAO {
	
	public int leaveInsert(String email, String reason) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into leave_member values(?,?,sysdate,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		st.setString(2, reason);
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
	}

}

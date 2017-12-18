package com.gohere.files;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gohere.util.DBConnector;

public class fileDAO {

	//SelectList
	public ArrayList<fileDTO> selectList(int num) throws Exception{
		ArrayList<fileDTO> list = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = "select * from files where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			fileDTO f = new fileDTO();
			f.setfName(rs.getString("fName"));
			f.setoName(rs.getString("oName"));
			list.add(f);
		}
		DBConnector.disConnect(st, con, rs);
		return list;
	}

	//Insert
	public int insert(fileDTO fDto) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into files values (?, ?, ?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, fDto.getNum());
		st.setString(2, fDto.getoName());
		st.setString(3, fDto.getfName());

		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
	}

	//Delete
	public int delete(int num) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "delete files where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);

		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		return result;
	}
}

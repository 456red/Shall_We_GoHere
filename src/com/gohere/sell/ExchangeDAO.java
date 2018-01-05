package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gohere.util.DBConnector;
import com.gohere.util.MakeRow;

public class ExchangeDAO {

	//Insert
	public int insert(ExchangeDTO exchangeDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "insert into s_ex values(?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, exchangeDTO.getNum());
		st.setString(2, exchangeDTO.getPoto());
		st.setString(3, exchangeDTO.getKind());
		st.setString(4, exchangeDTO.getName());
		st.setInt(5, exchangeDTO.getPoint());
		st.setString(6, exchangeDTO.getEx_date());
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	//Delete
	public int delete(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql ="delete s_ex where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	//SelectOne
	public ExchangeDTO selectOne(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_ex where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		ExchangeDTO exchangeDTO = null;
		if(rs.next()) {
			exchangeDTO = new ExchangeDTO();
			exchangeDTO.setNum(rs.getInt("num"));
			exchangeDTO.setPoto(rs.getString("poto"));
			exchangeDTO.setKind(rs.getString("kind"));
			exchangeDTO.setName(rs.getString("name"));
			exchangeDTO.setPoint(rs.getInt("point"));
			exchangeDTO.setEx_date(rs.getString("ex_date"));
		}
		DBConnector.disConnect(st, con, rs);
		return exchangeDTO;
	}

	//SelectList
	public List<ExchangeDTO> selectList(MakeRow makeRow) throws Exception {
		List<ExchangeDTO> ar = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = "select * from "
				+ "(select rownum R, E.* from "
				+ "(select * from s_ex where "+makeRow.getKind()+" like ? order by num desc) E) "
				+ "where R between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		st.setInt(2, makeRow.getStartRow());
		st.setInt(3, makeRow.getLastRow());
		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			ExchangeDTO exchangeDTO = new ExchangeDTO();
			exchangeDTO.setNum(rs.getInt("num"));
			exchangeDTO.setPoto(rs.getString("poto"));
			exchangeDTO.setKind(rs.getString("kind"));
			exchangeDTO.setName(rs.getString("name"));
			exchangeDTO.setPoint(rs.getInt("point"));
			exchangeDTO.setEx_date(rs.getString("ex_date"));
			ar.add(exchangeDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}

	//GetTot
	public int getTotCount(MakeRow makeRow) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select nvl(count(num), 0) from s_qna where "+makeRow.getKind()+" like ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		ResultSet rs = st.executeQuery();
		rs.next();
		int totalCount = rs.getInt(1);

		DBConnector.disConnect(st, con, rs);
		return totalCount;
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

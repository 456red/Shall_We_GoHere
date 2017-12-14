package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gohere.util.DBConnector;
import com.gohere.util.MakeRow;

public class InquiryDAO implements BoardDAO {

	@Override //Insert
	public int insert(BoardDTO boardDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "insert into s_inquiry values(?,?,?,?,sysdate,?,0,0)"; 
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, boardDTO.getNum());
		st.setString(2, boardDTO.getTitle());
		st.setString(3, boardDTO.getWriter());
		st.setString(4, boardDTO.getContents());
		st.setInt(5, boardDTO.getHit());
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //Update
	public int update(BoardDTO boardDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "update s_inquiry set title=?, contents=? where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, boardDTO.getTitle());
		st.setString(2, boardDTO.getContents());
		st.setInt(3, boardDTO.getNum());
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //Delete
	public int delete(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql ="delete s_inquiry where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //SelectOne
	public BoardDTO selectOne(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_inquiry where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		InquiryDTO inquiryDTO = null;
		if(rs.next()) {
			inquiryDTO = new InquiryDTO();
			inquiryDTO.setNum(rs.getInt("num"));
			inquiryDTO.setTitle(rs.getString("title"));
			inquiryDTO.setWriter(rs.getString("writer"));
			inquiryDTO.setContents(rs.getString("contents"));
			inquiryDTO.setReg_date(rs.getDate("r_date"));
			inquiryDTO.setHit(rs.getInt("hit"));
		}
		DBConnector.disConnect(st, con, rs);
		return null;
	}

	@Override //SelectList
	public List<BoardDTO> selectList(MakeRow makeRow) throws Exception {
		List<BoardDTO> ar = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = "select * from "
				+ "(select rownum R, I.* from "
				+ "(select * from s_inquiry where "+makeRow.getKind()+" like ? order by ref desc, step asc) I) "
				+ "where R between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		st.setInt(2, makeRow.getStartRow());
		st.setInt(3, makeRow.getLastRow());
		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			InquiryDTO inquiryDTO = new InquiryDTO();
			inquiryDTO.setNum(rs.getInt("num"));
			inquiryDTO.setTitle(rs.getString("title"));
			inquiryDTO.setWriter(rs.getString("writer"));
			inquiryDTO.setContents(rs.getString("contents"));
			inquiryDTO.setReg_date(rs.getDate("r_date"));
			inquiryDTO.setHit(rs.getInt("hit"));
			inquiryDTO.setRef(rs.getInt("ref"));
			inquiryDTO.setStep(rs.getInt("step"));
			inquiryDTO.setDepth(rs.getInt("depth"));
			ar.add(inquiryDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}

	@Override //GetTot
	public int getTotCount(MakeRow makeRow) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select nvl(count(num), 0) from s_inquiry where "+makeRow.getKind()+" like ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		ResultSet rs = st.executeQuery();
		rs.next();
		int totalCount = rs.getInt(1);

		DBConnector.disConnect(st, con, rs);
		return totalCount;
	}

	@Override //Hit
	public int hit(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "update s_inquiry set hit=hit+1 where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);

		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);;
		return result;
	}

	//GetNum
	public int getNum() throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select sell_seq.nextval from dual";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		rs.next();
		int num = rs.getInt(1);

		DBConnector.disConnect(st, con, rs);
		return num;
	}

}

package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gohere.util.DBConnector;
import com.gohere.util.MakeRow;

public class NoticeDAO implements BoardDAO {

	@Override //Insert
	public int insert(BoardDTO boardDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "insert into s_notice values(?,?,?,?,sysdate,0)"; 
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, boardDTO.getNum());
		st.setString(2, boardDTO.getTitle());
		st.setString(3, boardDTO.getWriter());
		st.setString(4, boardDTO.getContents());
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //Update
	public int update(BoardDTO boardDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "update s_notice set title=?, contents=? where num=?";
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
		String sql ="delete s_notice where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //SelectOne
	public BoardDTO selectOne(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_notice where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		NoticeDTO noticeDTO = null;
		if(rs.next()) {
			noticeDTO = new NoticeDTO();
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setContents(rs.getString("contents"));
			noticeDTO.setReg_date(rs.getDate("r_date"));
			noticeDTO.setHit(rs.getInt("hit"));
		}
		DBConnector.disConnect(st, con, rs);
		return noticeDTO;
	}

	@Override //SelectList
	public List<BoardDTO> selectList(MakeRow makeRow) throws Exception {
		List<BoardDTO> ar = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = "select * from "
				+ "(select rownum R, N.* from "
				+ "(select * from s_notice where "+makeRow.getKind()+" like ? order by num desc) N) "
				+ "where R between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		st.setInt(2, makeRow.getStartRow());
		st.setInt(3, makeRow.getLastRow());
		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			NoticeDTO noticeDTO = new NoticeDTO();
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setContents(rs.getString("contents"));
			noticeDTO.setReg_date(rs.getDate("r_date"));
			noticeDTO.setHit(rs.getInt("hit"));
			ar.add(noticeDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}

	@Override //GetTot
	public int getTotCount(MakeRow makeRow) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select nvl(count(num), 0) from s_notice where "+makeRow.getKind()+" like ?";
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
		String sql = "update s_notice set hit=hit+1 where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);

		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);;
		return result;
	}
	
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

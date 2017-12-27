package com.gohere.sell;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gohere.util.DBConnector;
import com.gohere.util.MakeRow;

public class ReviewDAO implements BoardDAO {

	@Override //Insert
	public int insert(BoardDTO boardDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "insert into s_review values(?,?,?,?,sysdate,0,0)"; 
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
		String sql = "update s_review set title=?, contents=? where num=?";
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
		String sql ="delete s_review where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();

		DBConnector.disConnect(st, con);
		return result;
	}

	@Override //SelectOne
	public BoardDTO selectOne(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_review where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		ReviewDTO reviewDTO = null;
		if(rs.next()) {
			reviewDTO = new ReviewDTO();
			reviewDTO.setNum(rs.getInt("num"));
			reviewDTO.setTitle(rs.getString("title"));
			reviewDTO.setWriter(rs.getString("writer"));
			reviewDTO.setContents(rs.getString("contents"));
			reviewDTO.setReg_date(rs.getDate("r_date"));
			reviewDTO.setHit(rs.getInt("hit"));
			reviewDTO.setUp(rs.getInt("up"));
		}
		DBConnector.disConnect(st, con, rs);
		return reviewDTO;
	}

	@Override //SelectList
	public List<BoardDTO> selectList(MakeRow makeRow) throws Exception {
		List<BoardDTO> ar = new ArrayList<>();
		Connection con = DBConnector.getConnect();
		String sql = "select * from "
				+ "(select rownum R, V.* from "
				+ "(select * from s_review where "+makeRow.getKind()+" like ? order by num desc) V) "
				+ "where R between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+makeRow.getSearch()+"%");
		st.setInt(2, makeRow.getStartRow());
		st.setInt(3, makeRow.getLastRow());
		ResultSet rs = st.executeQuery();

		while(rs.next()) {
			ReviewDTO reviewDTO = new ReviewDTO();
			reviewDTO.setNum(rs.getInt("num"));
			reviewDTO.setTitle(rs.getString("title"));
			reviewDTO.setWriter(rs.getString("writer"));
			reviewDTO.setContents(rs.getString("contents"));
			reviewDTO.setReg_date(rs.getDate("r_date"));
			reviewDTO.setHit(rs.getInt("hit"));
			reviewDTO.setUp(rs.getInt("up"));
			ar.add(reviewDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}

	@Override //GetTot
	public int getTotCount(MakeRow makeRow) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select nvl(count(num), 0) from s_review where "+makeRow.getKind()+" like ?";
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
		String sql = "update s_review set hit=hit+1 where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);

		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);;
		return result;
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
	
	//UP
	public int up(int num,String email) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "update s_review set up=up+1 where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int result = st.executeUpdate();
		
		sql = "insert into s_up values(?,sysdate)";
		st = con.prepareStatement(sql);
		st.setString(1, email);
		result = st.executeUpdate();
		
		DBConnector.disConnect(st, con);
		return result;
	}
	public void select(int num,String email) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select * from s_up where to_char(up_date,'YY/MM/DD')=to_char(sysdate,'YY/MM/DD')and email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			System.out.println("Áö±Ý¤·¤§");
		}else {
			this.up(num, email);
		}
		
	}
	public int upsel(int num) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select up from s_review where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		rs.next();
		return rs.getInt(1);
	}
	
	
	

}

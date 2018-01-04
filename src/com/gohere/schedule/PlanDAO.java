package com.gohere.schedule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.gohere.util.DBConnector;

public class PlanDAO {
	
	public int insert(PlanDTO planDTO) throws Exception {
		Connection con=DBConnector.getConnect();
		String sql = "insert into plan values(?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, planDTO.getEmail());
		st.setString(2, planDTO.getCity());
		st.setInt(3, planDTO.getStay_date());
		st.setString(4, planDTO.getTitle());
		st.setString(5, planDTO.getDepart_date());
		st.setInt(6, planDTO.getRef());
		st.setInt(7, planDTO.getStep());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		
		return result;
	}
	public int getNum() throws Exception{
	      Connection con = DBConnector.getConnect();
	      String sql = "select PLAN_SEQ.NEXTVAL from dual";
	      PreparedStatement st = con.prepareStatement(sql);
	      ResultSet rs = st.executeQuery();
	      rs.next();
	      int result = rs.getInt(1);
	      DBConnector.disConnect(st, con, rs);
	      return result;   
	   }
	public ArrayList<PlanDayDTO> selectOne(PlanDayDTO planDayDTO) throws Exception{
		Connection con = DBConnector.getConnect();
		String sql = "select plan from planday where ref=? and step=? and day=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, planDayDTO.getRef());
		st.setInt(2, planDayDTO.getStep());
		st.setInt(3, planDayDTO.getDay());
		ResultSet rs = st.executeQuery();
		ArrayList<PlanDayDTO> ar = new ArrayList<>();
		while(rs.next()) {
			PlanDayDTO planDayDTO1 = new PlanDayDTO();
			planDayDTO1.setRef(planDayDTO.getRef());
			planDayDTO1.setStep(planDayDTO.getStep());
			planDayDTO1.setDay(planDayDTO.getDay());
			planDayDTO1.setPlan(rs.getString("plan"));
			ar.add(planDayDTO1);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}
	public void save(PlanDayDTO planDayDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "insert into planday values(?, ?, ?, ?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, planDayDTO.getRef());
		st.setInt(2, planDayDTO.getStep());
		st.setInt(3, planDayDTO.getDay());
		st.setString(4, planDayDTO.getPlan());
		st.executeUpdate();
		DBConnector.disConnect(st, con);
	}
	public void delete(PlanDayDTO planDayDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "delete planday where ref=? and step=? and day=? and plan=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, planDayDTO.getRef());
		st.setInt(2, planDayDTO.getStep());
		st.setInt(3, planDayDTO.getDay());
		st.setString(4, planDayDTO.getPlan());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
	}
	public ArrayList<InfoDTO> search(PlanDayDTO planDayDTO) throws Exception {
		Connection con = DBConnector.getConnect();
		String sql = "select city from plan where ref=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, planDayDTO.getRef());
		ResultSet rs = st.executeQuery();
		ArrayList<InfoDTO> ar = new ArrayList<>();
		while(rs.next()) {
			InfoDTO infoDTO = new InfoDTO();
			infoDTO.setCity(rs.getString("city"));
			infoDTO.setDays(rs.getString("stay_date"));
			infoDTO.setLat("36.715917");
			infoDTO.setLng("128.026130");
			infoDTO.setLevel("12");
			ar.add(infoDTO);
		}
		DBConnector.disConnect(st, con, rs);
		return ar;
	}
}

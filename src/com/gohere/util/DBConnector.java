package com.gohere.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnector {
	
	public static Connection getConnect() throws Exception{
		String user = "gohere";
		String password = "gohere";
		String url = "jdbc:oracle:thin:@192.168.20.55:1521:xe";
		String driver ="oracle.jdbc.driver.OracleDriver";
		
		Class.forName(driver); //스트링으로 된것을 클래스로 바꿔주는역할
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		return con;
	}
	
	public static void disConnect(PreparedStatement st, Connection con) throws Exception{
		st.close();
		con.close();
		
	}
	
	public static void disConnect(PreparedStatement st, Connection con, ResultSet rs) throws Exception{
		rs.close();
		DBConnector.disConnect(st, con);
	
	}

}

package com.gohere.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnector {
	
	public static Connection getConnect() throws Exception {
		Context init = new InitialContext();
		DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/user03");
		Connection con = dataSource.getConnection();
		return con;
	}
	
	public static void disConnect(PreparedStatement ps, Connection con)throws Exception{
		ps.close();
		con.close();
	}
	
	public static void disConnect(ResultSet rs, PreparedStatement ps, Connection con) throws Exception {
		rs.close();
		DBConnector.disConnect(ps, con);
	}

}

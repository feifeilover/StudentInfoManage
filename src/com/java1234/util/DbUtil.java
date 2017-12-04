package com.java1234.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	private String jdbcUrl = "jdbc:mysql://localhost:3306/db_studentinfo" ;
	private String jdbcUser = "root";
	private String jdbcPassword = "123mm123";
	private String jdbcName = "com.mysql.jdbc.Driver";
	
	public Connection getConnection() throws Exception {
		Class.forName(jdbcName);
		Connection con = DriverManager.getConnection(jdbcUrl,jdbcUser,jdbcPassword);
		return con;
	}
	
	public void CloseCon(Connection con) throws Exception {
		if(con != null) {
			con.close();
		}
	}
	
	public static void main(String args[]) {
		DbUtil dbutil = new DbUtil();
		try {
			dbutil.getConnection();
			System.out.println("数据库连接成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

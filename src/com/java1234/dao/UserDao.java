package com.java1234.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.java1234.model.User;

public class UserDao {
	public User login(Connection con,User user) throws Exception{
		User resultSet = null ;
		String sql = "select * from t_user where userName=? and password=?" ;
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, user.getUserName());
		pstm.setString(2, user.getPassword());
		ResultSet rs = pstm.executeQuery();
		if(rs.next()) {
			resultSet = new User();
			resultSet.setUserName(rs.getString("userName"));
			resultSet.setPassword(rs.getString("password"));
		}
		return resultSet;
	} 
}

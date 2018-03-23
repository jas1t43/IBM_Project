package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtility {
	private static Connection connection = null;

	public static Connection getConnection() throws Exception {
		if (connection != null)
			return connection;
		else {
			// Store the database URL in a string
			
			Class.forName("com.mysql.jdbc.Driver");
			 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");

			// set the url, username and password for the databse
			
			return connection;
		}
	}
}
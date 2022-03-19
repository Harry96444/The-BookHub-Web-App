package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection conn = null;

	public static Connection getConnection() {
		try {

			if (conn == null) {
//				Class.forName("com.mysql.cj.jdbc.Driver");
				Class.forName("org.postgresql.Driver");
				conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ebook", "postgres", "harsh123");
//				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "harsh123");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

}

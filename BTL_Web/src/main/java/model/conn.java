package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conn {
	public static Connection getConnection() {
		Connection c = null;
		String sql = "jdbc:mysql://localhost:3308/btl_webdt";
		String user = "root";
		String password = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			c = DriverManager.getConnection(sql, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("MySQL JDBC Driver not found.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Connection failed.");
			e.printStackTrace();
		}
		return c;
	}

	public static void closeConnection(Connection c) {
		if (c != null)
			try {
				c.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public static void printInfor(Connection c) {
		if (c != null) {
			try {
				java.sql.DatabaseMetaData mtData = c.getMetaData();
				System.out.println(mtData.getDatabaseProductName());
				System.out.println(mtData.getDatabaseProductVersion());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.User;

public class UserDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public User login(String username, String password) {
		String query = "SELECT * FROM user WHERE username = ? AND password = ?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if (rs.next()) {
				return new User(rs.getString("username"), rs.getString("hoten"), rs.getString("password"),
						rs.getString("email"), rs.getInt("gioitinh"), rs.getDate("ngaysinh"), rs.getString("sdt"),
						rs.getString("diachi"));
			}
		} catch (SQLException e) {
			// Log exception (you could use a logging framework like SLF4J)
			e.printStackTrace();
		} finally {
			// Close resources to prevent resource leaks
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	public User checkAccountExist(String username) {
		String query = "SELECT * FROM user WHERE username = ?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			rs = ps.executeQuery();
			if (rs.next()) {
				return new User(rs.getString("username"), rs.getString("hoten"), rs.getString("password"),
						rs.getString("email"), rs.getInt("gioitinh"), rs.getDate("ngaysinh"), rs.getString("sdt"),
						rs.getString("diachi"));
			}
		} catch (SQLException e) {
			// Log exception (you could use a logging framework like SLF4J)
			e.printStackTrace();
		} finally {
			// Close resources to prevent resource leaks
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	public void signup(String username, String hoten, String password, String email, int gioitinh,
			java.sql.Date ngaysinh, String sdt, String diachi) {
		String query = "INSERT INTO user (username, hoten, password, email, gioitinh, ngaysinh, sdt, diachi) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, hoten);
			ps.setString(3, password);
			ps.setString(4, email);
			ps.setInt(5, gioitinh);
			ps.setDate(6, ngaysinh);
			ps.setString(7, sdt);
			ps.setString(8, diachi);

			int rowsAffected = ps.executeUpdate();
			if (rowsAffected > 0) {
				System.out.println("User registered successfully.");
			} else {
				System.out.println("User registration failed.");
			}
		} catch (SQLException e) {
			e.printStackTrace(); // Properly handle or log the exception
		} finally {
			// Close resources in finally block
			try {
				if (ps != null) {
					ps.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace(); // Properly handle or log the exception
			}
		}
	}

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<>();
		Connection connection = model.conn.getConnection();
		String sql = "SELECT * FROM user"; // Adjust this query to match your database schema

		try (Statement statement = connection.createStatement(); ResultSet resultSet = statement.executeQuery(sql)) {

			while (resultSet.next()) {
				User user = new User(resultSet.getString("username"), resultSet.getString("hoten"),
						resultSet.getString("password"), resultSet.getString("email"), resultSet.getInt("gioitinh"),
						resultSet.getDate("ngaysinh"), resultSet.getString("sdt"), resultSet.getString("diachi"));
				users.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}

		return users;
	}

	public void addUser(User user) {
		Connection connection = model.conn.getConnection();
		String sql = "INSERT INTO user (username, hoten, password, email, gioitinh, ngaysinh, sdt, diachi) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getHoten());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getEmail());
			preparedStatement.setInt(5, user.getGioitinh());
			preparedStatement.setDate(6, new java.sql.Date(user.getNgaysinh().getTime()));
			preparedStatement.setString(7, user.getSdt());
			preparedStatement.setString(8, user.getDiachi());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public void updateUser(User user) {
		Connection connection = model.conn.getConnection();
		String sql = "UPDATE user SET hoten=?, password=?, email=?, gioitinh=?, ngaysinh=?, sdt=?, diachi=? WHERE username=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, user.getHoten());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setInt(4, user.getGioitinh());
			preparedStatement.setDate(5, new java.sql.Date(user.getNgaysinh().getTime()));
			preparedStatement.setString(6, user.getSdt());
			preparedStatement.setString(7, user.getDiachi());
			preparedStatement.setString(8, user.getUsername());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public void deleteUser(String username) {
		Connection connection = model.conn.getConnection();
		String sql = "DELETE FROM user WHERE username=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, username);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public List<User> searchUsers(String searchTerm) {
		List<User> userList = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = model.conn.getConnection();
			String query = "SELECT * FROM user WHERE username LIKE ? OR hoten LIKE ?";

			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + searchTerm + "%");
			ps.setString(2, "%" + searchTerm + "%");

			rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User(rs.getString("username"), rs.getString("hoten"), rs.getString("password"),
						rs.getString("email"), rs.getInt("gioitinh"), rs.getDate("ngaysinh"), rs.getString("sdt"),
						rs.getString("diachi"));
				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// Close resources in finally block
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return userList;
	}

	public User getUserByUsername(String username) {
	    User user = null;
	    Connection connection = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    try {
	        connection = model.conn.getConnection();
	        String sql = "SELECT * FROM user WHERE username = ?";
	        ps = connection.prepareStatement(sql);
	        ps.setString(1, username);
	        rs = ps.executeQuery();
	        
	        if (rs.next()) {
	            user = new User();
	            user.setUsername(rs.getString("username"));
	            user.setHoten(rs.getString("hoten"));
	            user.setPassword(rs.getString("password"));
	            user.setEmail(rs.getString("email"));
	            user.setGioitinh(rs.getInt("gioitinh"));
	            user.setNgaysinh(rs.getDate("ngaysinh"));
	            user.setSdt(rs.getString("sdt"));
	            user.setDiachi(rs.getString("diachi"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        // Close resources in finally block
	        model.conn.closeConnection(connection);
	        try {
	            if (rs != null)
	                rs.close();
	            if (ps != null)
	                ps.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    return user;
	}

	public List<User> getAllUsersPaginated(int page, int pageSize) {
        List<User> users = new ArrayList<>();
        Connection connection = model.conn.getConnection();

        // Tính index bắt đầu của bản ghi cho trang hiện tại
        int start = (page - 1) * pageSize;

        try {
            String sql = "SELECT * FROM user LIMIT ?, ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, start);
            statement.setInt(2, pageSize);

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User(resultSet.getString("username"), resultSet.getString("hoten"),
                        resultSet.getString("password"), resultSet.getString("email"), resultSet.getInt("gioitinh"),
                        resultSet.getDate("ngaysinh"), resultSet.getString("sdt"), resultSet.getString("diachi"));
                users.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            model.conn.closeConnection(connection);
        }

        return users;
    }

    public int getNumberOfUsers() {
        int count = 0;
        Connection connection = model.conn.getConnection();

        try {
            String sql = "SELECT COUNT(*) FROM user";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            if (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            model.conn.closeConnection(connection);
        }

        return count;
    }
	

	public static UserDAO getInstance() {
		return new UserDAO();
	}

}
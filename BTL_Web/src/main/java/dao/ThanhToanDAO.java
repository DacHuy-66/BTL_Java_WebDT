package dao;

import entity.ThanhToan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ThanhToanDAO {

	private Connection conn;
	private ResultSet rs;

	private Connection getConnection() {
		return model.conn.getConnection(); // Assuming this method gets a new connection
	}

	public List<ThanhToan> getAllThanhToan() {
		List<ThanhToan> thanhToanList = new ArrayList<>();
		conn = getConnection();

		String sql = "SELECT * FROM payment";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			rs = preparedStatement.executeQuery();

			while (rs.next()) {
				ThanhToan thanhToan = new ThanhToan(rs.getString("payment_id"), rs.getString("donhang_id"),
						rs.getInt("sotienthanhtoan"), rs.getString("phuongthucthanhtoan"),
						rs.getDate("ngaythanhtoan"));
				thanhToanList.add(thanhToan);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return thanhToanList;
	}

	public List<ThanhToan> getAllThanhToanPaginated(int page, int recordsPerPage, String searchTerm) {
		List<ThanhToan> thanhToanList = new ArrayList<>();
		conn = getConnection();
		int start = (page - 1) * recordsPerPage;

		try {
			String sql = "SELECT * FROM payment WHERE 1=1";

			// Add conditions based on searchTerm
			if (searchTerm != null && !searchTerm.isEmpty()) {
				sql += " AND (payment_id LIKE ? OR donhang_id LIKE ?)";
			}

			sql += " LIMIT ?, ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			int parameterIndex = 1;

			// Set parameters based on conditions
			if (searchTerm != null && !searchTerm.isEmpty()) {
				preparedStatement.setString(parameterIndex++, "%" + searchTerm + "%");
				preparedStatement.setString(parameterIndex++, "%" + searchTerm + "%");
			}

			preparedStatement.setInt(parameterIndex++, start);
			preparedStatement.setInt(parameterIndex, recordsPerPage);

			rs = preparedStatement.executeQuery();

			while (rs.next()) {
				ThanhToan thanhToan = new ThanhToan(rs.getString("payment_id"), rs.getString("donhang_id"),
						rs.getInt("sotienthanhtoan"), rs.getString("phuongthucthanhtoan"),
						rs.getDate("ngaythanhtoan"));
				thanhToanList.add(thanhToan);
			}

			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return thanhToanList;
	}

	public int getNumberOfThanhToan(String searchTerm) {
		int count = 0;
		conn = getConnection();
		String sql = "SELECT COUNT(*) AS count FROM payment WHERE 1=1";

		if (searchTerm != null && !searchTerm.isEmpty()) {
			sql += " AND (payment_id LIKE ? OR donhang_id LIKE ?)";
		}

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			int paramIndex = 1;
			if (searchTerm != null && !searchTerm.isEmpty()) {
				preparedStatement.setString(paramIndex++, "%" + searchTerm + "%");
				preparedStatement.setString(paramIndex++, "%" + searchTerm + "%");
			}

			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace(); // Consider logging the error instead
		} finally {
			closeResources();
		}

		return count;
	}

	public void addThanhToan(ThanhToan thanhToan) {
		conn = getConnection();
		String sql = "INSERT INTO payment (payment_id, donhang_id, sotienthanhtoan, phuongthucthanhtoan, ngaythanhtoan) "
				+ "VALUES (?, ?, ?, ?, ?)";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			preparedStatement.setString(1, thanhToan.getPayment_id());
			preparedStatement.setString(2, thanhToan.getDonhang_id());
			preparedStatement.setInt(3, thanhToan.getSotienthanhtoan());
			preparedStatement.setString(4, thanhToan.getPhuongthucthanhtoan());
			preparedStatement.setDate(5, thanhToan.getNgaythanhtoan());

			int rowsInserted = preparedStatement.executeUpdate();
			if (rowsInserted > 0) {
				System.out.println("A new ThanhToan was inserted successfully!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
	}

	public void updateThanhToan(ThanhToan thanhToan) {
		Connection connection = model.conn.getConnection();
		String sql = "UPDATE payment SET [donhang_id] = ?, [sotienthanhtoan] = ?,[ phuongthucthanhtoan] = ?, [ngaythanhtoan] = ? WHERE payment_id = ?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, thanhToan.getDonhang_id());
			preparedStatement.setInt(2, thanhToan.getSotienthanhtoan());
			preparedStatement.setString(3, thanhToan.getPhuongthucthanhtoan());
			preparedStatement.setDate(4, new java.sql.Date(thanhToan.getNgaythanhtoan().getTime()));
			preparedStatement.setString(5, thanhToan.getPayment_id());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public void deleteThanhToan(String payment_id) {
		conn = getConnection();
		String sql = "DELETE FROM payment WHERE payment_id=?";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			preparedStatement.setString(1, payment_id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
	}

	public ThanhToan getThanhToanById(String payment_id) {
		ThanhToan thanhToan = null;
		conn = getConnection();
		String sql = "SELECT * FROM payment WHERE payment_id = ?";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			preparedStatement.setString(1, payment_id);
			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				thanhToan = new ThanhToan(rs.getString("payment_id"), rs.getString("donhang_id"),
						rs.getInt("sotienthanhtoan"), rs.getString("phuongthucthanhtoan"),
						rs.getDate("ngaythanhtoan"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return thanhToan;
	}

	public List<Map<String, Object>> getRevenueByMonth() {
		List<Map<String, Object>> statistics = new ArrayList<>();
		conn = getConnection();

		String sql = "SELECT MONTH(ngaythanhtoan) AS month, SUM(sotienthanhtoan) AS revenue FROM payment GROUP BY MONTH(ngaythanhtoan)";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Map<String, Object> item = new HashMap<>();
				item.put("month", rs.getInt("month"));
				item.put("revenue", rs.getDouble("revenue"));
				statistics.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return statistics;
	}

	public List<Map<String, Object>> getRevenueByYear() {
		List<Map<String, Object>> statistics = new ArrayList<>();
		conn = model.conn.getConnection();

		String sql = "SELECT YEAR(ngaythanhtoan) AS year, SUM(sotienthanhtoan) AS revenue " + "FROM payment "
				+ "GROUP BY YEAR(ngaythanhtoan)";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Map<String, Object> item = new HashMap<>();
				item.put("year", rs.getInt("year"));
				item.put("revenue", rs.getDouble("revenue"));
				statistics.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(conn);
		}

		return statistics;
	}

	public int getCountDonHangByStatus(String status) {
		int count = 0;
		conn = getConnection();
		String sql = "SELECT COUNT(*) AS count FROM donhang WHERE status = ?";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			preparedStatement.setString(1, status);
			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return count;
	}

	private void closeResources() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace(); // Log or handle the exception as needed
		}
	}
}

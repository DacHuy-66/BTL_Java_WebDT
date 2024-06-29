package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import entity.DonHang;

public class DonHangDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public List<DonHang> getAllDonHangs() {
		List<DonHang> donHangs = new ArrayList<>();
		Connection connection = model.conn.getConnection();
		String sql = "SELECT * FROM donhang";

		try (Statement statement = connection.createStatement(); ResultSet resultSet = statement.executeQuery(sql)) {

			while (resultSet.next()) {
				DonHang donHang = new DonHang(resultSet.getString("donhang_id"), resultSet.getString("hoten"),
						resultSet.getString("sdt"), resultSet.getInt("giohang_id"),
						resultSet.getString("diachigiaohang"), resultSet.getString("image"),
						resultSet.getString("model"), resultSet.getString("dungluong"), resultSet.getString("mausac"),
						resultSet.getInt("soluong"), resultSet.getDouble("gia"), resultSet.getString("status"));
				donHangs.add(donHang);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}

		return donHangs;
	}

	public void addDonHang(DonHang donHang) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = model.conn.getConnection();
			if (connection != null) {
				String sql = "INSERT INTO donhang (hoten, sdt, giohang_id, diachigiaohang, image, model, dungluong, mausac, soluong, gia, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, donHang.getHoten());
				preparedStatement.setString(2, donHang.getSdt());
				preparedStatement.setInt(3, donHang.getGiohang_id());
				preparedStatement.setString(4, donHang.getDiachigiaohang());
				preparedStatement.setString(5, donHang.getImage());
				preparedStatement.setString(6, donHang.getModel());
				preparedStatement.setString(7, donHang.getDungluong());
				preparedStatement.setString(8, donHang.getMausac());
				preparedStatement.setInt(9, donHang.getSoluong());
				preparedStatement.setDouble(10, donHang.getGia());
				preparedStatement.setString(11, donHang.getStatus());

				int rowsInserted = preparedStatement.executeUpdate();
				if (rowsInserted > 0) {
					System.out.println("A new DonHang was inserted successfully!");
				}
			} else {
				System.err.println("Failed to get database connection.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					model.conn.closeConnection(connection);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void updateDonHang(DonHang donHang) {
		Connection connection = model.conn.getConnection();
		String sql = "UPDATE donhang SET hoten=?, sdt=?, giohang_id=?, diachigiaohang=?, image=?, model=?, dungluong=?, mausac=?, soluong=?, gia=?, status=? WHERE donhang_id=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, donHang.getHoten());
			preparedStatement.setString(2, donHang.getSdt());
			preparedStatement.setInt(3, donHang.getGiohang_id());
			preparedStatement.setString(4, donHang.getDiachigiaohang());
			preparedStatement.setString(5, donHang.getImage());
			preparedStatement.setString(6, donHang.getModel());
			preparedStatement.setString(7, donHang.getDungluong());
			preparedStatement.setString(8, donHang.getMausac());
			preparedStatement.setInt(9, donHang.getSoluong());
			preparedStatement.setDouble(10, donHang.getGia());
			preparedStatement.setString(11, donHang.getStatus());
			preparedStatement.setString(12, donHang.getDonhang_id());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public void deleteDonHang(String donhang_id) {
		Connection connection = model.conn.getConnection();
		String sql = "DELETE FROM `donhang` WHERE donhang_id=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, donhang_id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public DonHang getDonHangById(String donhang_id) {
		DonHang donHang = null;
		Connection connection = model.conn.getConnection();
		String sql = "SELECT * FROM `donhang` WHERE donhang_id = ?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, donhang_id);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				donHang = new DonHang(resultSet.getString("donhang_id"), resultSet.getString("hoten"),
						resultSet.getString("sdt"), resultSet.getInt("giohang_id"),
						resultSet.getString("diachigiaohang"), resultSet.getString("image"),
						resultSet.getString("model"), resultSet.getString("dungluong"), resultSet.getString("mausac"),
						resultSet.getInt("soluong"), resultSet.getDouble("gia"), resultSet.getString("status"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}

		return donHang;
	}

	public List<DonHang> searchDonHangs(String searchTerm) {
		List<DonHang> donHangs = new ArrayList<>();
		Connection connection = model.conn.getConnection();
		String sql = "SELECT * FROM `donhang` WHERE donhang_id LIKE ? OR hoten LIKE ?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			preparedStatement.setString(1, "%" + searchTerm + "%");
			preparedStatement.setString(2, "%" + searchTerm + "%");
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				DonHang donHang = new DonHang(rs.getString("donhang_id"), rs.getString("hoten"), rs.getString("sdt"),
						rs.getInt("giohang_id"), rs.getString("diachigiaohang"), rs.getString("image"),
						rs.getString("model"), rs.getString("dungluong"), rs.getString("mausac"), rs.getInt("soluong"),
						rs.getDouble("gia"), rs.getString("status"));
				donHangs.add(donHang);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}

		return donHangs;
	}

	public List<DonHang> getAllDonHangsPaginated(int page, int recordsPerPage, String searchTerm, String statusFilter) {
		List<DonHang> donHangs = new ArrayList<>();
		conn = model.conn.getConnection();
		int start = (page - 1) * recordsPerPage;

		try {
			String sql = "SELECT * FROM `donhang` WHERE 1=1";

			// Add conditions based on searchTerm and statusFilter
			if (searchTerm != null && !searchTerm.isEmpty()) {
				sql += " AND (donhang_id LIKE ? OR hoten LIKE ?)";
			}

			if (statusFilter != null && !statusFilter.isEmpty()) {
				sql += " AND status = ?";
			}

			sql += " LIMIT ?, ?";

			ps = conn.prepareStatement(sql);

			// Set parameters based on conditions
			int paramIndex = 1;
			if (searchTerm != null && !searchTerm.isEmpty()) {
				ps.setString(paramIndex++, "%" + searchTerm + "%");
				ps.setString(paramIndex++, "%" + searchTerm + "%");
			}

			if (statusFilter != null && !statusFilter.isEmpty()) {
				ps.setString(paramIndex++, statusFilter);
			}

			ps.setInt(paramIndex++, start);
			ps.setInt(paramIndex, recordsPerPage);

			rs = ps.executeQuery();

			while (rs.next()) {
				DonHang donHang = new DonHang(rs.getString("donhang_id"), rs.getString("hoten"), rs.getString("sdt"),
						rs.getInt("giohang_id"), rs.getString("diachigiaohang"), rs.getString("image"),
						rs.getString("model"), rs.getString("dungluong"), rs.getString("mausac"), rs.getInt("soluong"),
						rs.getDouble("gia"), rs.getString("status"));
				donHangs.add(donHang);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(conn);
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return donHangs;
	}

	public int getNumberOfDonHangs(String searchTerm, String statusFilter) {
		int count = 0;
		conn = model.conn.getConnection();

		try {
			String sql = "SELECT COUNT(*) FROM `donhang` WHERE 1=1";

			// Add conditions based on searchTerm and statusFilter
			if (searchTerm != null && !searchTerm.isEmpty()) {
				sql += " AND (donhang_id LIKE ? OR hoten LIKE ?)";
			}

			if (statusFilter != null && !statusFilter.isEmpty()) {
				sql += " AND status = ?";
			}

			ps = conn.prepareStatement(sql);

			// Set parameters based on conditions
			int paramIndex = 1;
			if (searchTerm != null && !searchTerm.isEmpty()) {
				ps.setString(paramIndex++, "%" + searchTerm + "%");
				ps.setString(paramIndex++, "%" + searchTerm + "%");
			}

			if (statusFilter != null && !statusFilter.isEmpty()) {
				ps.setString(paramIndex, statusFilter);
			}

			rs = ps.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(conn);
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return count;
	}

	public double getRevenue(Date startDate, Date endDate) {
		double revenue = 0;
		String sql = "SELECT SUM(total_amount) FROM donhang WHERE order_date BETWEEN ? AND ?";

		try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			preparedStatement.setDate(1, new java.sql.Date(startDate.getTime()));
			preparedStatement.setDate(2, new java.sql.Date(endDate.getTime()));
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				revenue = resultSet.getDouble(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return revenue;
	}

	public boolean placeOrder(DonHang donHang) {
		Connection connection = null;
		PreparedStatement insertOrderStatement = null;
		PreparedStatement deleteCartItemsStatement = null;
		ResultSet resultSet = null;

		try {
			connection = model.conn.getConnection();
			connection.setAutoCommit(false);

			String sql = "INSERT INTO donhang (hoten, sdt, giohang_id, diachigiaohang, image, model, dungluong, mausac, soluong, gia, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			insertOrderStatement = connection.prepareStatement(sql);
			insertOrderStatement.setString(1, donHang.getHoten());
			insertOrderStatement.setString(2, donHang.getSdt());
			insertOrderStatement.setInt(3, donHang.getGiohang_id());
			insertOrderStatement.setString(4, donHang.getDiachigiaohang());
			insertOrderStatement.setString(5, donHang.getImage());
			insertOrderStatement.setString(6, donHang.getModel());
			insertOrderStatement.setString(7, donHang.getDungluong());
			insertOrderStatement.setString(8, donHang.getMausac());
			insertOrderStatement.setInt(9, donHang.getSoluong());
			insertOrderStatement.setDouble(10, donHang.getGia());
			insertOrderStatement.setString(11, donHang.getStatus() != null ? donHang.getStatus() : "processing");

			int rowsInserted = insertOrderStatement.executeUpdate();
			if (rowsInserted > 0) {
				// Xóa các sản phẩm trong giỏ hàng sau khi đặt hàng thành công
				String deleteCartItemsQuery = "DELETE FROM giohang WHERE giohang_id = ?";
				deleteCartItemsStatement = connection.prepareStatement(deleteCartItemsQuery);
				deleteCartItemsStatement.setInt(1, donHang.getGiohang_id());

				int rowsDeleted = deleteCartItemsStatement.executeUpdate();
				if (rowsDeleted > 0) {
					connection.commit();
					return true;
				} else {
					connection.rollback();
					return false;
				}
			} else {
				connection.rollback();
				return false;
			}
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			e.printStackTrace();
			return false;
		} finally {
			try {
				if (insertOrderStatement != null) {
					insertOrderStatement.close();
				}
				if (deleteCartItemsStatement != null) {
					deleteCartItemsStatement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
				if (connection != null) {
					connection.setAutoCommit(true);
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}

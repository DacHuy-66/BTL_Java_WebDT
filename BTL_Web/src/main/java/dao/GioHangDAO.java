package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.DonHang;
import entity.GioHang;
import model.conn;

public class GioHangDAO {

	private Connection connection;

	public GioHangDAO() {
		connection = conn.getConnection();
	}

	public boolean addToCart(GioHang gioHangItem, String dungluong, String mausac) {
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String queryCheck = "SELECT giohang_id, soluong FROM giohang WHERE image = ? AND model = ? AND dungluong = ? AND mausac = ?";
		String queryUpdate = "UPDATE giohang SET soluong = ? WHERE giohang_id = ?";
		String queryInsert = "INSERT INTO giohang (image, model, gia, soluong, dungluong, mausac) VALUES (?, ?, ?, ?, ?, ?)";

		try {
			// Check if the product already exists in the cart
			preparedStatement = connection.prepareStatement(queryCheck);
			preparedStatement.setString(1, gioHangItem.getImage());
			preparedStatement.setString(2, gioHangItem.getModel());
			preparedStatement.setString(3, dungluong);
			preparedStatement.setString(4, mausac);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				// Product already exists, update the quantity
				int giohang_id = resultSet.getInt("giohang_id");
				int currentQuantity = resultSet.getInt("soluong");
				int newQuantity = currentQuantity + gioHangItem.getSoluong();

				preparedStatement.close(); 

				preparedStatement = connection.prepareStatement(queryUpdate);
				preparedStatement.setInt(1, newQuantity);
				preparedStatement.setInt(2, giohang_id);

				int rowsUpdated = preparedStatement.executeUpdate();
				return rowsUpdated > 0;
			} else {
				preparedStatement.close();

				preparedStatement = connection.prepareStatement(queryInsert);
				preparedStatement.setString(1, gioHangItem.getImage());
				preparedStatement.setString(2, gioHangItem.getModel());
				preparedStatement.setDouble(3, gioHangItem.getGia());
				preparedStatement.setInt(4, gioHangItem.getSoluong());
				preparedStatement.setString(5, dungluong);
				preparedStatement.setString(6, mausac);

				int rowsInserted = preparedStatement.executeUpdate();
				return rowsInserted > 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			closeResultSet(resultSet);
			closePreparedStatement(preparedStatement);
		}
	}

	public List<GioHang> getAllItems() {
		List<GioHang> gioHangs = new ArrayList<>();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String query = "SELECT * FROM giohang";

		try {
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				GioHang gioHang = new GioHang(resultSet.getInt("giohang_id"), resultSet.getString("image"),
						resultSet.getString("model"), resultSet.getDouble("gia"), resultSet.getInt("soluong"),
						resultSet.getString("dungluong"), resultSet.getString("mausac"));
				gioHangs.add(gioHang);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResultSet(resultSet);
			closePreparedStatement(preparedStatement);
		}

		return gioHangs;
	}

	public boolean removeFromCart(int giohang_id) {
		PreparedStatement preparedStatement = null;
		String query = "DELETE FROM giohang WHERE giohang_id = ?";

		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, giohang_id);

			int rowsDeleted = preparedStatement.executeUpdate();
			return rowsDeleted > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			closePreparedStatement(preparedStatement);
		}
	}

	public GioHang getItemById(int giohang_id) {
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String query = "SELECT * FROM giohang WHERE giohang_id = ?";
		GioHang gioHang = null;

		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, giohang_id);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				gioHang = new GioHang(resultSet.getInt("giohang_id"), resultSet.getString("image"),
						resultSet.getString("model"), resultSet.getDouble("gia"), resultSet.getInt("soluong"),
						resultSet.getString("dungluong"), resultSet.getString("mausac"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResultSet(resultSet);
			closePreparedStatement(preparedStatement);
		}

		return gioHang;
	}

	public boolean updateCartItem(GioHang gioHangItem) {
		PreparedStatement preparedStatement = null;
		String query = "UPDATE giohang SET image = ?, model = ?, gia = ?, soluong = ?, dungluong = ?, mausac = ? WHERE giohang_id = ?";

		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, gioHangItem.getImage());
			preparedStatement.setString(2, gioHangItem.getModel());
			preparedStatement.setDouble(3, gioHangItem.getGia());
			preparedStatement.setInt(4, gioHangItem.getSoluong());
			preparedStatement.setString(5, gioHangItem.getDungluong());
			preparedStatement.setString(6, gioHangItem.getMausac());
			preparedStatement.setInt(7, gioHangItem.getGiohang_id());

			int rowsUpdated = preparedStatement.executeUpdate();
			return rowsUpdated > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			closePreparedStatement(preparedStatement);
		}
	}

	public boolean updateCartItemQuantity(int giohang_id, int newQuantity) {
		PreparedStatement preparedStatement = null;
		String query = "UPDATE giohang SET soluong = ? WHERE giohang_id = ?";

		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, newQuantity);
			preparedStatement.setInt(2, giohang_id);

			int rowsUpdated = preparedStatement.executeUpdate();
			return rowsUpdated > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			closePreparedStatement(preparedStatement);
		}
	}

	public boolean placeOrderAndClearCart(DonHang donHangItem, String customerName, String customerPhone,
	        String customerAddress) {
	    Connection connection = null;
	    PreparedStatement insertOrderStatement = null;
	    PreparedStatement deleteCartItemsStatement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = conn.getConnection();
	        connection.setAutoCommit(false); // Bắt đầu transaction

	        // Thêm đơn hàng vào bảng donhang
	        String insertOrderQuery = "INSERT INTO donhang (hoten, sodienthoai, giohang_id, diachinhanhang, status) VALUES (?, ?, ?, ?, 'Processing')";
	        insertOrderStatement = connection.prepareStatement(insertOrderQuery);
	        insertOrderStatement.setString(1, donHangItem.getHoten());
	        insertOrderStatement.setString(2, donHangItem.getSdt());
	        insertOrderStatement.setInt(3, donHangItem.getGiohang_id());
	        insertOrderStatement.setString(4, donHangItem.getDiachigiaohang());

	        int rowsInserted = insertOrderStatement.executeUpdate();
	        if (rowsInserted > 0) {
	            // Xóa các sản phẩm trong giỏ hàng sau khi đặt hàng thành công
	            String deleteCartItemsQuery = "DELETE FROM giohang WHERE giohang_id = ?";
	            deleteCartItemsStatement = connection.prepareStatement(deleteCartItemsQuery);
	            deleteCartItemsStatement.setInt(1, donHangItem.getGiohang_id());

	            int rowsDeleted = deleteCartItemsStatement.executeUpdate();
	            if (rowsDeleted > 0) {
	                connection.commit(); // Commit transaction nếu thành công
	                return true;
	            } else {
	                connection.rollback(); // Rollback nếu không thể xóa giỏ hàng
	                return false;
	            }
	        } else {
	            connection.rollback(); // Rollback nếu không thể thêm đơn hàng
	            return false;
	        }
	    } catch (SQLException e) {
	        if (connection != null) {
	            try {
	                connection.rollback(); // Rollback nếu có lỗi
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
	                connection.setAutoCommit(true); // Đặt lại AutoCommit về true
	                connection.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}


	private void closePreparedStatement(PreparedStatement preparedStatement) {
		if (preparedStatement != null) {
			try {
				preparedStatement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// Method to close ResultSet
	private void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

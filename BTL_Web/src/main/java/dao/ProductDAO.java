package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.Product;
import model.conn;
import entity.*;

public class ProductDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	// Phương thức để lấy tất cả các sản phẩm
	public List<Product> getAllProducts() {
		List<Product> list = new ArrayList<>();
		String query = "select * from phone";
		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	// Phương thức để lấy 4 sản phẩm có số lượng ít nhất
	public List<Product> getBestSellingProducts() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM phone ORDER BY soluong ASC LIMIT 4";
		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public NCC getNccById(String ncc_id) {
		NCC ncc = null;
		String query = "SELECT * FROM ncc WHERE ncc_id = ?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, ncc_id);
			rs = ps.executeQuery();
			if (rs.next()) {
				ncc = new NCC(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return ncc;
	}

	public List<NCC> getAllNCC() {
		List<NCC> list = new ArrayList<>();
		String query = "select * from ncc";
		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new NCC(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public List<Product> getProductByNccID(String ncc_id) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM `phone` WHERE ncc_id = ?";
		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, ncc_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public Product getProductByPID(String phone_id) {
		String query = "SELECT * FROM `phone` WHERE phone_id = ?";

		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, phone_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public Product getProductByPhoneID(String phone_id) {
	    Product product = null;
	    String query = "SELECT p.*, m.dungluong, m.mausac, m.mathang_id, m.soluong " +
	                   "FROM phone p " +
	                   "JOIN mathang m ON p.phone_id = m.phone_id " +
	                   "WHERE p.phone_id = ?;";

	    try {
	        conn = model.conn.getConnection(); 
	        ps = conn.prepareStatement(query);
	        ps.setString(1, phone_id);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            if (product == null) {

	                product = new Product();
	                product.setPhone_id(rs.getString("phone_id"));
	                product.setModel(rs.getString("model"));
	                product.setGia(rs.getDouble("gia"));
	                product.setThongso(rs.getString("thongso"));
	                product.setThuonghieu(rs.getString("thuonghieu"));
	                product.setImage(rs.getString("image"));
	            }

	            MatHang matHang = new MatHang();
	            matHang.setDungluong(rs.getString("dungluong"));
	            matHang.setMausac(rs.getString("mausac"));
	            matHang.setMathang_id(rs.getString("mathang_id"));
	            matHang.setPhone_id(rs.getString("phone_id"));
	            matHang.setSoluong(rs.getInt("soluong"));

	            product.addMatHang(matHang);
	        }

	        if (product == null) {
	            System.out.println("No product found with phone_id: " + phone_id);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null)
	                rs.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        try {
	            if (ps != null)
	                ps.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        try {
	            if (conn != null)
	                conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    return product;
	}


	public List<Product> searchByName(String txtSearch) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM `phone` WHERE model LIKE ? ;";
		try {
			new conn();
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public void insertProduct(Product product) {
		String query = "INSERT INTO phone VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, product.getPhone_id());
			ps.setString(2, product.getThuonghieu());
			ps.setString(3, product.getModel());
			ps.setDouble(4, product.getGia());
			ps.setInt(5, product.getSoluong());
			ps.setString(6, product.getThongso());
			ps.setString(7, product.getNcc_id());
			ps.setString(8, product.getImage());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
	}

	public void updateProduct(Product product) {
		Connection connection = model.conn.getConnection();
		String query = "UPDATE phone SET thuonghieu=?, model=?, gia=?, soluong=?, thongso=?, ncc_id=?, image=? WHERE phone_id=?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, product.getThuonghieu());
			ps.setString(2, product.getModel());
			ps.setDouble(3, product.getGia());
			ps.setInt(4, product.getSoluong());
			ps.setString(5, product.getThongso());
			ps.setString(6, product.getNcc_id());
			ps.setString(7, product.getImage());
			ps.setString(8, product.getPhone_id());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
	}

	public void deleteProduct(String phone_id) {
		String query = "DELETE FROM phone WHERE phone_id=?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, phone_id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
	}

	public List<Product> searchProducts(String searchTerm) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM phone WHERE phone_id LIKE ? OR thuonghieu LIKE ? OR model LIKE ?";
		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + searchTerm + "%");
			ps.setString(2, "%" + searchTerm + "%");
			ps.setString(3, "%" + searchTerm + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
		return list;
	}

	private void closeResources() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Phương thức để lấy danh sách sản phẩm theo từng trang với số lượng bản ghi
	// trên mỗi trang
	public List<Product> getAllProductsPaginated(int page, int recordsPerPage, String searchTerm, String brandFilter) {
		List<Product> list = new ArrayList<>();
		int offset = (page - 1) * recordsPerPage;
		String query = "SELECT * FROM phone";
		boolean isFiltered = false;

		// Xử lý điều kiện tìm kiếm
		if (searchTerm != null && !searchTerm.isEmpty()) {
			query += " WHERE model LIKE ?";
			isFiltered = true;
		}

		// Xử lý điều kiện lọc theo thương hiệu (nếu có)
		if (brandFilter != null && !brandFilter.isEmpty()) {
			if (isFiltered) {
				query += " AND thuonghieu = ?";
			} else {
				query += " WHERE thuonghieu = ?";
				isFiltered = true;
			}
		}

		query += " LIMIT ? OFFSET ?";

		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);

			int parameterIndex = 1;

			// Thiết lập các tham số của câu truy vấn
			if (searchTerm != null && !searchTerm.isEmpty()) {
				ps.setString(parameterIndex++, "%" + searchTerm + "%");
			}

			if (brandFilter != null && !brandFilter.isEmpty()) {
				ps.setString(parameterIndex++, brandFilter);
			}

			ps.setInt(parameterIndex++, recordsPerPage);
			ps.setInt(parameterIndex++, offset);

			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
		return list;
	}

	// Phương thức để lấy tổng số lượng sản phẩm (dùng cho phân trang)
	public int getNumberOfProducts(String searchTerm, String brandFilter) {
		int count = 0;
		String query = "SELECT COUNT(*) FROM phone";
		boolean isFiltered = false;

		// Xử lý điều kiện tìm kiếm
		if (searchTerm != null && !searchTerm.isEmpty()) {
			query += " WHERE model LIKE ?";
			isFiltered = true;
		}

		// Xử lý điều kiện lọc theo thương hiệu (nếu có)
		if (brandFilter != null && !brandFilter.isEmpty()) {
			if (isFiltered) {
				query += " AND thuonghieu = ?";
			} else {
				query += " WHERE thuonghieu = ?";
				isFiltered = true;
			}
		}

		try {
			conn = model.conn.getConnection();
			ps = conn.prepareStatement(query);

			int parameterIndex = 1;

			// Thiết lập các tham số của câu truy vấn
			if (searchTerm != null && !searchTerm.isEmpty()) {
				ps.setString(parameterIndex++, "%" + searchTerm + "%");
			}

			if (brandFilter != null && !brandFilter.isEmpty()) {
				ps.setString(parameterIndex++, brandFilter);
			}

			rs = ps.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
		return count;
	}

	public MatHang getMatHangById(String maMH) {
		Connection connection = model.conn.getConnection();
		MatHang product = null;
		try {
			String query = "SELECT * FROM mathang WHERE mathang_id = ?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, maMH);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				product = new MatHang(rs.getString("mathang_id"), rs.getString("phone_id"),
						rs.getInt("soluong"), rs.getString("dungluong"), rs.getString("mausac"),rs.getDouble("gia"));
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			model.conn.closeConnection(connection);
		}
		return product;
	}

	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();
		List<Product> list = productDAO.getBestSellingProducts();
		for (Product o : list) {
			System.out.println(o);
		}
	}
}

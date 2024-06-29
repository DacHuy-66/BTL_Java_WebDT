package controller;

import entity.User;
import dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

@WebServlet("/QlKhachHang")
public class QlKhachHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

	public QlKhachHang() {
		super();
		userDAO = new UserDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        int totalUsers = userDAO.getNumberOfUsers();
        int usersPerPage = 5;
        int totalPages = (int) Math.ceil((double) totalUsers / usersPerPage);

        int currentPage = 1;
        if (request.getParameter("page") != null) {
            currentPage = Integer.parseInt(request.getParameter("page"));
        }

        List<User> users = userDAO.getAllUsersPaginated(currentPage, usersPerPage);

        request.setAttribute("userList", users);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
        
        request.getRequestDispatcher("/admin/html/user.jsp").forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if ("update".equals(action)) {
			updateUser(request, response);
		} else if ("delete".equals(action)) {
			deleteUser(request);
		} else if ("add".equals(action)) {
			addUser(request, response);
		} else {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
		}
		doGet(request, response);
	}

	private void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String hoten = request.getParameter("hoten");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		java.sql.Date ngaysinh = null;
		String ngaysinhStr = request.getParameter("ngaysinh");
		if (ngaysinhStr != null && !ngaysinhStr.isEmpty()) {
			ngaysinh = java.sql.Date.valueOf(ngaysinhStr);
		}

		String sdt = request.getParameter("sdt");
		String diachi = request.getParameter("diachi");

		if (username.isEmpty() || hoten.isEmpty() || password.isEmpty() || email.isEmpty() || sdt.isEmpty()
				|| diachi.isEmpty() || ngaysinh == null) {
			request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin và năm sinh.");
			doGet(request, response);
			return;
		}

		String phoneRegex = "^\\d{10,15}$";
		if (!Pattern.matches(phoneRegex, sdt)) {
			request.setAttribute("errorMessage", "Số điện thoại phải từ 10 đến 15 số.");
			doGet(request, response);
			return;
		}

		User existingUser = userDAO.checkAccountExist(username);

		if (existingUser == null) {
			int gioiTinhInt = "true".equals(request.getParameter("gioitinh")) ? 1 : 0;
			userDAO.signup(username, hoten, password, email, gioiTinhInt, ngaysinh, sdt, diachi);
			request.setAttribute("successMessage", "Thêm người dùng thành công.");
		} else {
			request.setAttribute("errorMessage", "Username đã tồn tại.");
		}
		doGet(request, response);
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String hoten = request.getParameter("hoten");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		int gioitinh = Integer.parseInt(request.getParameter("gioitinh"));
		java.sql.Date ngaysinh = null;
		String ngaysinhStr = request.getParameter("ngaysinh");
		if (ngaysinhStr != null && !ngaysinhStr.isEmpty()) {
			ngaysinh = java.sql.Date.valueOf(ngaysinhStr);
		}
		String sdt = request.getParameter("sdt");
		String diachi = request.getParameter("diachi");

		User updatedUser = new User(username, hoten, password, email, gioitinh, ngaysinh, sdt, diachi);
		userDAO.updateUser(updatedUser);

		request.setAttribute("successMessage", "Cập nhật người thành công.");
		doGet(request, response);
	}

	private void deleteUser(HttpServletRequest request) {
		String username = request.getParameter("username");
		userDAO.deleteUser(username);
        request.setAttribute("successMessage", "Xóa khách hàng thành công.");
	}
}

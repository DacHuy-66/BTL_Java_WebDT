package controller;

import dao.GioHangDAO;
import dao.ProductDAO;
import dao.UserDAO;
import entity.GioHang;
import entity.NCC;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public ProfileServlet() {
        super();
        userDAO = new UserDAO();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        ProductDAO productDAO = new ProductDAO();

        List<NCC> listN = productDAO.getAllNCC();
        request.setAttribute("listN", listN);
        
        GioHangDAO gioHangDAO = new GioHangDAO();
		List<GioHang> cartItems = gioHangDAO.getAllItems();
		request.setAttribute("cartItems", cartItems);
		double totalAmount = 0;
		for (GioHang item : cartItems) {
			totalAmount += item.getGia() * item.getSoluong();
		}
		request.setAttribute("totalAmount", totalAmount);
        request.getRequestDispatcher("/html/users.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if ("update".equals(action)) {
            updateUser(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
        }
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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

        User updatedUser = new User(username, hoten, password, email, gioitinh, ngaysinh, sdt, diachi);

        userDAO.updateUser(updatedUser);

        request.setAttribute("successMessage", "Thông tin người dùng đã được cập nhật thành công.");

        request.setAttribute("user", updatedUser);

        doGet(request, response);
    }

}

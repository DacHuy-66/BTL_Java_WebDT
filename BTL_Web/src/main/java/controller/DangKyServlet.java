package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GioHangDAO;
import dao.ProductDAO;
import dao.UserDAO;
import entity.GioHang;
import entity.NCC;
import entity.User;

@WebServlet("/DangKy")
public class DangKyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DangKyServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<NCC> listN = productDAO.getAllNCC();
        
        GioHangDAO gioHangDAO = new GioHangDAO();
		List<GioHang> cartItems = gioHangDAO.getAllItems();
		request.setAttribute("cartItems", cartItems);
		double totalAmount = 0;
		for (GioHang item : cartItems) {
			totalAmount += item.getGia() * item.getSoluong();
		}
		request.setAttribute("totalAmount", totalAmount);
        request.setAttribute("listN", listN);
        request.getRequestDispatcher("/html/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String hoten = request.getParameter("hoten");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("Email");
        String gioitinh = request.getParameter("Sex");
        String sdt = request.getParameter("PhoneNumber");
        String diachi = request.getParameter("Address");
        String ngaysinhStr = request.getParameter("UserBirthDate");

        if (username.isEmpty() || hoten.isEmpty() || password.isEmpty() || repassword.isEmpty() ||
                email.isEmpty() || gioitinh == null || sdt.isEmpty() || diachi.isEmpty() || ngaysinhStr.isEmpty()) {
            request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("/html/register.jsp").forward(request, response);
            return;
        }

        String emailRegex = "^[A-Za-z0-9+_.-]+@(.+)$";
        if (!Pattern.matches(emailRegex, email)) {
            request.setAttribute("errorMessage", "Vui lòng nhập đúng email.");
            request.getRequestDispatcher("/html/register.jsp").forward(request, response);
            return;
        }

        if (!password.equals(repassword)) {
            request.setAttribute("errorMessage", "Nhập lại mật khẩu không trùng với mật khẩu.");
            request.getRequestDispatcher("/html/register.jsp").forward(request, response);
            return;
        }

        String phoneRegex = "^\\d{10,15}$";
        if (!Pattern.matches(phoneRegex, sdt)) {
            request.setAttribute("errorMessage", "Vui lòng nhập số điện thoại hợp lệ.");
            request.getRequestDispatcher("/html/register.jsp").forward(request, response);
            return;
        }

        int gioiTinhInt = "true".equals(gioitinh) ? 1 : 0;

        java.sql.Date ngaysinh = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = sdf.parse(ngaysinhStr);
            ngaysinh = new java.sql.Date(date.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        UserDAO userDAO = new UserDAO();
        User existingUser = userDAO.checkAccountExist(username);

        if (existingUser == null) {
            userDAO.signup(username, hoten, password, email, gioiTinhInt, ngaysinh, sdt, diachi);
            response.sendRedirect(request.getContextPath() + "/Login");
        } else {
            request.setAttribute("errorMessage", "Username đã tồn tại.");
            request.getRequestDispatcher("/html/register.jsp").forward(request, response);
        }
    }
}

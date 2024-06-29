package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GioHangDAO;
import dao.ProductDAO;
import dao.UserDAO;
import entity.GioHang;
import entity.NCC;
import entity.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
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
		request.removeAttribute("errorMessage");

		request.getRequestDispatcher("/html/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserDAO loginDAO = new UserDAO();

		User user = loginDAO.login(username, password);

		if (user == null) {
			request.setAttribute("errorMessage", "Sai tên đăng nhập hoặc mật khẩu!");
			request.getRequestDispatcher("/html/login.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("user", user);
			HttpSession session = request.getSession();
			session.setAttribute("acc", user);

			response.sendRedirect(request.getContextPath() + "/Home");
		}

	}
}

package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import dao.UserDAO;
import entity.NCC;
import entity.User;

/**
 * Servlet implementation class LoginAdmin
 */
@WebServlet("/LoginAdmin")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ProductDAO productDAO = new ProductDAO();
		List<NCC> listN = productDAO.getAllNCC();
		request.setAttribute("listN", listN);

		request.removeAttribute("errorMessage");

		request.getRequestDispatcher("./admin/html/index.jsp").forward(request, response);
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
			request.getRequestDispatcher("./admin/html/index.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("user", user);
			HttpSession session = request.getSession();
			session.setAttribute("acc", user);

			response.sendRedirect(request.getContextPath() + "/QlKhachHang");
		}

	}

}

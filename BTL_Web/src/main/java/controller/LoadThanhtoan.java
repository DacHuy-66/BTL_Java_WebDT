package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ThanhToanDAO;
import entity.ThanhToan;

@WebServlet("/LoadThanhtoan")
public class LoadThanhtoan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoadThanhtoan() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String payment_id = request.getParameter("tid");
		ThanhToanDAO thanhToanDAO = new ThanhToanDAO();
		ThanhToan thanhToan = thanhToanDAO.getThanhToanById(payment_id); // Fetch payment by ID
		
		
		request.setAttribute("detail", thanhToan);
		request.getRequestDispatcher("/admin/html/editthanhtoan.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Redirect to doGet for handling GET requests
		doGet(request, response);
	}
}

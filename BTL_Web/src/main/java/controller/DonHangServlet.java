package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DonHangDAO;
import dao.GioHangDAO;
import dao.ProductDAO;
import entity.DonHang;
import entity.GioHang;
import entity.NCC;

@WebServlet("/DonHang")
public class DonHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DonHangDAO donHangDAO;

	public DonHangServlet() {
		super();
		donHangDAO = new DonHangDAO();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		List<DonHang> orderDonHangs = donHangDAO.getAllDonHangs();
		request.setAttribute("orderDonHangs", orderDonHangs);
		
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
		request.getRequestDispatcher("./html/checkoder.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

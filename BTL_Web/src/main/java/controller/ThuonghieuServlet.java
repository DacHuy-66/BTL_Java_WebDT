package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GioHangDAO;
import dao.ProductDAO;
import entity.GioHang;
import entity.NCC;
import entity.Product;

/**
 * Servlet implementation class ThuonghieuServlet
 */
@WebServlet("/Thuonghieu")
public class ThuonghieuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThuonghieuServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ncc_id = request.getParameter("ncc_id");

		if (ncc_id != null && !ncc_id.isEmpty()) {
			try {
				ProductDAO productDAO = new ProductDAO();
				List<NCC> listN = productDAO.getAllNCC();
				request.setAttribute("listN", listN);
				List<Product> productList = productDAO.getProductByNccID(ncc_id);
				NCC ncc = productDAO.getNccById(ncc_id);
				GioHangDAO gioHangDAO = new GioHangDAO();
				List<GioHang> cartItems = gioHangDAO.getAllItems();
				request.setAttribute("cartItems", cartItems);
				double totalAmount = 0;
				for (GioHang item : cartItems) {
					totalAmount += item.getGia() * item.getSoluong();
				}
				request.setAttribute("totalAmount", totalAmount);
				request.setAttribute("listP", productList);
				request.setAttribute("ncc", ncc);
				request.getRequestDispatcher("/html/samsung.jsp").forward(request, response);
			} catch (Exception e) {
				throw new ServletException("Error processing request", e);
			}
		} else {
			response.sendRedirect(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Handle POST requests if needed
		doGet(request, response);
	}

}

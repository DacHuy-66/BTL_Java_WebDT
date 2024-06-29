package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import entity.GioHang;
import entity.NCC;
import dao.GioHangDAO;
import dao.ProductDAO;

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GioHangDAO gioHangDAO;

	public CartServlet() {
		super();
		gioHangDAO = new GioHangDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		List<GioHang> cartItems = gioHangDAO.getAllItems();
		request.setAttribute("cartItems", cartItems);

		double totalAmount = 0;
		for (GioHang item : cartItems) {
			totalAmount += item.getGia() * item.getSoluong();
		}
		request.setAttribute("totalAmount", totalAmount);

		ProductDAO productDAO = new ProductDAO();
		List<NCC> listN = productDAO.getAllNCC();
		request.setAttribute("listN", listN);
		request.getRequestDispatcher("./html/cart.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if ("delete".equals(action)) {
			int itemId = Integer.parseInt(request.getParameter("itemId"));
			gioHangDAO.removeFromCart(itemId);
		} else if ("updateQuantity".equals(action)) {
			int itemId = Integer.parseInt(request.getParameter("itemId"));
			String changeType = request.getParameter("changeQuantity");

			GioHang item = gioHangDAO.getItemById(itemId);
			if (item != null) {
				int currentQuantity = item.getSoluong();
				if ("increase".equals(changeType)) {
					currentQuantity++;
				} else if ("decrease".equals(changeType) && currentQuantity > 1) {
					currentQuantity--;
				}

				boolean success = gioHangDAO.updateCartItemQuantity(itemId, currentQuantity);
				if (!success) {
				}
			}
		}

		doGet(request, response);
	}

}

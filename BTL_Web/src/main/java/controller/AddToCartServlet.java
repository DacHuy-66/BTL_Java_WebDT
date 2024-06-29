package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.GioHangDAO;
import entity.GioHang;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String image = request.getParameter("image");
		String model = request.getParameter("model");
		double gia = Double.parseDouble(request.getParameter("gia"));
		String dungluong = request.getParameter("dungluong");
		String mausac = request.getParameter("mausac");

		GioHang gioHangItem = new GioHang();
		gioHangItem.setImage(image);
		gioHangItem.setModel(model);
		gioHangItem.setGia(gia);
		gioHangItem.setSoluong(1); 
		gioHangItem.setDungluong(dungluong);
		gioHangItem.setMausac(mausac);

		GioHangDAO gioHangDAO = new GioHangDAO();
		boolean added = gioHangDAO.addToCart(gioHangItem, dungluong, mausac);

		if (added) {
			response.sendRedirect("./Cart");
		} else {
			response.sendRedirect("./Home");
		}
	}
}

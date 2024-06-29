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
import entity.GioHang;
import entity.NCC;
import entity.Product;

/**
 * Servlet implementation class HomeControl
 */
@WebServlet("/Home")
public class HomeControl extends HttpServlet {
    private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeControl() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF8");
        ProductDAO productDAO = new ProductDAO();

        List<Product> list = productDAO.getBestSellingProducts();
        List<Product> listA = productDAO.getAllProducts();
        List<NCC> listN = productDAO.getAllNCC();
        
        GioHangDAO gioHangDAO = new GioHangDAO();
		List<GioHang> cartItems = gioHangDAO.getAllItems();
		request.setAttribute("cartItems", cartItems);
		double totalAmount = 0;
		for (GioHang item : cartItems) {
			totalAmount += item.getGia() * item.getSoluong();
		}
		request.setAttribute("totalAmount", totalAmount);
		
        HttpSession session = request.getSession();
        String message = (String) session.getAttribute("message");
        if (message != null) {
            request.setAttribute("message", message);
            session.removeAttribute("message");
        }

        request.setAttribute("listP", list);
        request.setAttribute("listA", listA);
        request.setAttribute("listN", listN);
        request.getRequestDispatcher("/html/index.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

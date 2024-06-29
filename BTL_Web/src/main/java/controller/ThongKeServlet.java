package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ThanhToanDAO;

/**
 * Servlet implementation class ThongKeServlet
 */
@WebServlet("/ThongKe")
public class ThongKeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongKeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Map<String, Object>> monthlyRevenue = new ThanhToanDAO().getRevenueByMonth();
        List<Map<String, Object>> yearlyRevenue = new ThanhToanDAO().getRevenueByYear();
        int successCount = new ThanhToanDAO().getCountDonHangByStatus("Delivered");
        int pendingCount = new ThanhToanDAO().getCountDonHangByStatus("Pending");
        
        request.setAttribute("monthlyRevenue", monthlyRevenue);
        request.setAttribute("yearlyRevenue", yearlyRevenue);
        request.setAttribute("successCount", successCount);
        request.setAttribute("pendingCount", pendingCount);
        
        request.getRequestDispatcher("/admin/html/thongke.jsp").forward(request, response);
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

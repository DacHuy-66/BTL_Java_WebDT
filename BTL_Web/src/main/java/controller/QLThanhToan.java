package controller;

import dao.ThanhToanDAO;
import entity.ThanhToan;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/QLThanhToan")
public class QLThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ThanhToanDAO thanhToanDAO;

	public void init() throws ServletException {
		super.init();
		thanhToanDAO = new ThanhToanDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		int page = 1;
		int recordsPerPage = 5;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		String searchTerm = request.getParameter("searchTerm");

		List<ThanhToan> thanhToanList = thanhToanDAO.getAllThanhToanPaginated(page, recordsPerPage, searchTerm);

		if (searchTerm != null && !searchTerm.isEmpty() && thanhToanList.isEmpty()) {
			request.setAttribute("errorMessage", "Không tìm thấy thanh toán phù hợp.");
		}

		request.setAttribute("tList", thanhToanList);

		int totalThanhToan = thanhToanDAO.getNumberOfThanhToan(searchTerm);
		int totalPages = (int) Math.ceil((double) totalThanhToan / recordsPerPage);

		request.setAttribute("totalPages", totalPages);
		request.setAttribute("currentPage", page);
		request.setAttribute("searchTerm", searchTerm);

		request.getRequestDispatcher("/admin/html/thanhtoan.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if ("update".equals(action)) {
			updateThanhToan(request, response);
		} else if ("delete".equals(action)) {
			deleteThanhToan(request);
		} else if ("add".equals(action)) {
			addThanhToan(request, response);
		} else {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
		}
		doGet(request, response);
	}

	private void addThanhToan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String payment_id = request.getParameter("payment_id");
		String donhang_id = request.getParameter("donhang_id");
	    int sotienthanhtoan = Integer.parseInt(request.getParameter("sotienthanhtoan"));
	    String phuongthucthanhtoan = request.getParameter("phuongthucthanhtoan");
		String ngaythanhtoanStr = request.getParameter("ngaythanhtoan");
		java.sql.Date ngaythanhtoan = null;
		if (ngaythanhtoanStr != null && !ngaythanhtoanStr.isEmpty()) {
			try {
				ngaythanhtoan = java.sql.Date.valueOf(ngaythanhtoanStr);
			} catch (IllegalArgumentException e) {

				e.printStackTrace();
				request.setAttribute("errorMessage", "Ngày thanh toán không hợp lệ.");
				doGet(request, response);
				return;
			}
		}

		try {
			if (payment_id.isEmpty() || donhang_id.isEmpty() || phuongthucthanhtoan.isEmpty()
					|| ngaythanhtoan == null) {
				request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
			} else {
				ThanhToan existingThanhToan = thanhToanDAO.getThanhToanById(payment_id);

				if (existingThanhToan == null) {
					ThanhToan thanhToan = new ThanhToan(payment_id, donhang_id, sotienthanhtoan, phuongthucthanhtoan,
							ngaythanhtoan);
					thanhToanDAO.addThanhToan(thanhToan);
					request.setAttribute("successMessage", "Thêm thanh toán thành công.");
				} else {
					request.setAttribute("errorMessage", "ID thanh toán đã tồn tại.");
				}
			}
		} catch (Exception e) {
			request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình thêm thanh toán.");
			e.printStackTrace(); 
		}

		doGet(request, response);
	}

	private void updateThanhToan(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    response.setContentType("text/html;charset=UTF-8");
	    response.setCharacterEncoding("UTF-8");

	    String payment_id = request.getParameter("payment_id");
	    String donhang_id = request.getParameter("donhang_id");
	    int sotienthanhtoan = Integer.parseInt(request.getParameter("sotienthanhtoan"));
	    String phuongthucthanhtoan = request.getParameter("phuongthucthanhtoan");
	    String ngaythanhtoanStr = request.getParameter("ngaythanhtoan");

	    java.sql.Date ngaythanhtoan = null;
	    if (ngaythanhtoanStr != null && !ngaythanhtoanStr.isEmpty()) {
	        try {
	            ngaythanhtoan = java.sql.Date.valueOf(ngaythanhtoanStr);
	        } catch (IllegalArgumentException e) {
	            e.printStackTrace(); 
	            request.setAttribute("errorMessage", "Ngày thanh toán không hợp lệ.");
	            doGet(request, response);
	            return;
	        }
	    }

	    ThanhToan updatedThanhToan = new ThanhToan(payment_id, donhang_id, sotienthanhtoan, phuongthucthanhtoan, ngaythanhtoan);
	    thanhToanDAO.updateThanhToan(updatedThanhToan);

	    request.setAttribute("successMessage", "Cập nhật thanh toán thành công.");
	    doGet(request, response);
	}


	private void deleteThanhToan(HttpServletRequest request) {
		String payment_id = request.getParameter("payment_id");

		try {
			thanhToanDAO.deleteThanhToan(payment_id);
			request.setAttribute("successMessage", "Xóa thanh toán thành công.");
		} catch (Exception e) {
			request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình xóa thanh toán.");
		}
	}
}

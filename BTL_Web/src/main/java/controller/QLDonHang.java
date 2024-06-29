package controller;

import dao.DonHangDAO;
import entity.DonHang;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/QLDonHang")
public class QLDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DonHangDAO donHangDAO;

	public QLDonHang() {
		super();
		donHangDAO = new DonHangDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");

		int page = 1;
		int recordsPerPage = 5;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		String searchTerm = request.getParameter("searchTerm");
		String statusFilter = request.getParameter("status_filter");

		List<DonHang> donHangs = donHangDAO.getAllDonHangsPaginated(page, recordsPerPage, searchTerm, statusFilter);

		if (searchTerm != null && !searchTerm.isEmpty() && donHangs.isEmpty()) {
			request.setAttribute("errorMessage", "Không tìm thấy đơn hàng phù hợp.");
		}

		request.setAttribute("dList", donHangs);

		int totalDonHangs = donHangDAO.getNumberOfDonHangs(searchTerm, statusFilter);
		int totalPages = (int) Math.ceil((double) totalDonHangs / recordsPerPage);

		request.setAttribute("totalPages", totalPages);
		request.setAttribute("currentPage", page);
		request.setAttribute("searchTerm", searchTerm);
		request.setAttribute("statusFilter", statusFilter);

		request.getRequestDispatcher("/admin/html/donhang.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if ("update".equals(action)) {
			updateDonHang(request, response);
		} else if ("delete".equals(action)) {
			deleteDonHang(request);
		} else if ("add".equals(action)) {
			addDonHang(request, response);
		} else {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
		}
		doGet(request, response);

	}

	private void addDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");
		String donhang_id = request.getParameter("donhang_id");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");

		int giohang_id = Integer.parseInt(request.getParameter("giohang_id"));
		String diachigiaohang = request.getParameter("diachigiaohang");
		String image = request.getParameter("image");
		String model = request.getParameter("model");
		String dungluong = request.getParameter("dungluong");
		String mausac = request.getParameter("mausac");
		int soluong = Integer.parseInt(request.getParameter("soluong"));
		double gia = Double.parseDouble(request.getParameter("gia"));

		String status = request.getParameter("status");

		if (hoten.isEmpty() || sdt.isEmpty() || diachigiaohang.isEmpty() || image.isEmpty() || model.isEmpty()
				|| dungluong.isEmpty() || mausac.isEmpty() || status.isEmpty()) {
			request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
			request.getRequestDispatcher("/admin/html/donhang.jsp").forward(request, response);
			return;
		} else {
			DonHang existingDonHang = donHangDAO.getDonHangById(donhang_id);

			if (existingDonHang == null) {
				DonHang donHang = new DonHang(donhang_id, hoten, sdt, giohang_id, diachigiaohang, image, model,
						dungluong, mausac, soluong, gia, status);
				donHangDAO.addDonHang(donHang);
				request.setAttribute("successMessage", "Thêm đơn hàng thành công.");
			} else {
				request.setAttribute("errorMessage", "ID đơn hàng đã tồn tại.");
			}

		}

		doGet(request, response);
	}

	private void updateDonHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		response.setCharacterEncoding("UTF-8");
		String donhang_id = request.getParameter("donhang_id");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");

		int giohang_id = Integer.parseInt(request.getParameter("giohang_id"));
		String diachigiaohang = request.getParameter("diachigiaohang");
		String image = request.getParameter("image");
		String model = request.getParameter("model");
		String dungluong = request.getParameter("dungluong");
		String mausac = request.getParameter("mausac");
		int soluong = Integer.parseInt(request.getParameter("soluong"));
		double gia = Double.parseDouble(request.getParameter("gia"));
		String status = request.getParameter("status");

		DonHang donHang = new DonHang(donhang_id, hoten, sdt, giohang_id, diachigiaohang, image, model, dungluong,
				mausac, soluong, gia, status);
		donHangDAO.updateDonHang(donHang);

		request.setAttribute("successMessage", "Cập nhật đơn hàng thành công.");

		doGet(request, response);
	}

	private void deleteDonHang(HttpServletRequest request) throws ServletException, IOException {
		String donhang_id = request.getParameter("donhang_id");
		donHangDAO.deleteDonHang(donhang_id);

		request.setAttribute("successMessage", "Xóa đơn hàng thành công.");

	}
}

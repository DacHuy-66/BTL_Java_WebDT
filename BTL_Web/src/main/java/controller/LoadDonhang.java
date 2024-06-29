package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DonHangDAO;
import entity.DonHang;

@WebServlet("/LoadDonhang")
public class LoadDonhang extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DonHangDAO donHangDAO;

    public LoadDonhang() {
        super();
        donHangDAO = new DonHangDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String donhang_id = request.getParameter("did");
        DonHang donHang = donHangDAO.getDonHangById(donhang_id);
        request.setAttribute("detail", donHang);
        request.getRequestDispatcher("/admin/html/editdonhang.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

package controller;

import dao.DonHangDAO;
import entity.DonHang;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Checkout")
public class CheckoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CheckoutServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
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

        // Create a new DonHang object
        DonHang donHang = new DonHang(null, hoten, sdt, giohang_id, diachigiaohang, image, model, dungluong, mausac, soluong, gia, status);

        // Save the order to the database
        DonHangDAO donHangDAO = new DonHangDAO();
        donHangDAO.placeOrder(donHang);

        // Redirect to a confirmation page or back to the cart
        response.sendRedirect("./Home");
    }
}

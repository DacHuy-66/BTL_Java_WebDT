package controller;

import dao.ProductDAO;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/QLSanPham")
public class QLSanPham extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public QLSanPham() {
        super();
        productDAO = new ProductDAO();
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
        String brandFilter = request.getParameter("brand_filter");

        List<Product> products = productDAO.getAllProductsPaginated(page, recordsPerPage, searchTerm, brandFilter);

        if (searchTerm != null && !searchTerm.isEmpty() && products.isEmpty()) {
            request.setAttribute("erMessage", "Không tìm thấy sản phẩm phù hợp.");
        }

        request.setAttribute("productList", products);

        // Total number of products for pagination
        int totalProducts = productDAO.getNumberOfProducts(searchTerm, brandFilter);
        int totalPages = (int) Math.ceil((double) totalProducts / recordsPerPage);

        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", page);
        request.setAttribute("searchTerm", searchTerm);
        request.setAttribute("brandFilter", brandFilter);

        request.getRequestDispatcher("/admin/html/phone.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if ("update".equals(action)) {
            updateProduct(request, response);
        } else if ("delete".equals(action)) {
            deleteProduct(request);
        } else if ("add".equals(action)) {
            addProduct(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
        }
		doGet(request, response);

    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phone_id = request.getParameter("phone_id");
        String thuonghieu = request.getParameter("thuonghieu");
        String model = request.getParameter("model");
        String giaStr = request.getParameter("gia");
        int soluong = Integer.parseInt(request.getParameter("soluong")) ;
        String thongso = request.getParameter("thongso");
        String ncc_id = request.getParameter("ncc_id");
        String image = request.getParameter("image");

        if (phone_id.isEmpty() || thuonghieu.isEmpty() || model.isEmpty() || giaStr.isEmpty()
                || thongso.isEmpty() || ncc_id.isEmpty() || image.isEmpty()) {
            request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
        } else {
            try {
                double gia = Double.parseDouble(giaStr);

                Product existingProduct = productDAO.getProductByPhoneID(phone_id);

                if (existingProduct == null) {
                    Product product = new Product(phone_id, thuonghieu, model, gia, soluong, thongso, ncc_id, image);
                    productDAO.insertProduct(product);
                    request.setAttribute("successMessage", "Thêm sản phẩm thành công.");
                } else {
                    request.setAttribute("errorMessage", "ID sản phẩm đã tồn tại.");
                }
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Giá phải là số hợp lệ.");
            }
        }
        doGet(request, response);
    }


    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phone_id = request.getParameter("phone_id");
        String thuonghieu = request.getParameter("thuonghieu");
        String model = request.getParameter("model");
        String giaStr = request.getParameter("gia");
        int soluong = Integer.parseInt(request.getParameter("soluong")) ;
        String thongso = request.getParameter("thongso");
        String ncc_id = request.getParameter("ncc_id");
        String image = request.getParameter("image");

        if (phone_id.isEmpty() || thuonghieu.isEmpty() || model.isEmpty() || giaStr.isEmpty()
                || thongso.isEmpty() || ncc_id.isEmpty() || image.isEmpty()) {
            request.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
        } else {
            try {
                double gia = Double.parseDouble(giaStr);

                Product product = new Product(phone_id, thuonghieu, model, gia, soluong, thongso, ncc_id, image);
                productDAO.updateProduct(product);

                request.setAttribute("successMessage", "Cập nhật sản phẩm thành công.");
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Giá phải là số hợp lệ.");
            }
        }
        doGet(request, response);
    }


    private void deleteProduct(HttpServletRequest request) {
        String phone_id = request.getParameter("phone_id");
        productDAO.deleteProduct(phone_id);
        request.setAttribute("successMessage", "Xóa sản phẩm thành công.");

    }
}

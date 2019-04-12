/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author hamin
 */
@WebServlet(name = "ManagerProductServletTest", urlPatterns = {"/ManagerProductServletTest"})
public class ManagerProductServletTest extends HttpServlet {

    ProductDAO product = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String command = req.getParameter("command");
        String product_id = req.getParameter("product_id");

        String url = "";
        try {
            switch (command) {

                case "delete":
                    product.deleteProduct(Long.parseLong(product_id));
                    url = "/admin/manager_product.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String command = req.getParameter("command");
        
        String product_id = req.getParameter("product_id");
        long productId = Long.parseLong(product_id);
        
        String category_id = req.getParameter("category_id");
   
        String tenDanhMuc = req.getParameter("tenSanPham");
        String image = req.getParameter("image");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("pescription");

        String url = "", error = "";
        if (tenDanhMuc.equals("")) {
            error = "Vui lòng nhập tên danh mục!";
            req.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        if (category_id.length() > 0) {
                            product.insertProduct(new Product(productId, Long.parseLong(category_id), tenDanhMuc, image, price, description));
                            url = "/admin/manager_product.jsp";
                        }
                        break;
                    case "update":
                        product.updateProduct(new Product(productId, tenDanhMuc, image, price, description));
                        url = "/admin/manager_product.jsp";
                        break;
                }
            } else {
                url = "/admin/insert_product.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(req, resp);
    }

}

package lk.ijse.ecommerce.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerce.bo.BOFactory;
import lk.ijse.ecommerce.bo.custom.CategoryBO;
import lk.ijse.ecommerce.bo.custom.ProductBO;
import lk.ijse.ecommerce.dto.categoryDTO;
import lk.ijse.ecommerce.dto.productDTO;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryAndProductServlet",value = "/category-products")
public class CategoryAndProductServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBOFactory().getBO(BOFactory.BOTypes.CATEGORY);
    ProductBO productBO = (ProductBO) BOFactory.getBOFactory().getBO(BOFactory.BOTypes.PRODUCT);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("category"));

        int CategoryId = Integer.parseInt(req.getParameter("category"));
        System.out.println(CategoryId);

        categoryDTO categoryDTO = categoryBO.getById((int) CategoryId);
        List<productDTO> productList = productBO.getCategoryById(categoryDTO);

        req.setAttribute("category", categoryDTO);
        req.setAttribute("LoadProduct", productList);

        // Forward the request to the JSP for rendering
        req.getRequestDispatcher("categoryProductDashboard.jsp").forward(req,resp);
    }
}

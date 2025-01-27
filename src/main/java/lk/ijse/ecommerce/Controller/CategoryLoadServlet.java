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

@WebServlet(name = "CategoryLoadServlet", value = "/categories-load")
public class CategoryLoadServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBOFactory().getBO(BOFactory.BOTypes.CATEGORY);
    ProductBO productBo = (ProductBO) BOFactory.getBOFactory().getBO(BOFactory.BOTypes.PRODUCT);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<categoryDTO> categories ;
        List<productDTO> products ;

        try {
            categories = categoryBO.categoryList();
            req.setAttribute("categories", categories);

            products = productBo.getAllProductDTOs();
            req.setAttribute("LoadProduct", products);

            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
        }catch (Exception e) {
            e.printStackTrace();

        }
    }
}

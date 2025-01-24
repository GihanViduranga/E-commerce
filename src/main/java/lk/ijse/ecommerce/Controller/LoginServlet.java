package lk.ijse.ecommerce.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerce.BO.custom.BOImpl.loginBOImpl;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    loginBOImpl loginBO = new loginBOImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        String message = "";
        String alertType = "";


        boolean isExist = loginBO.cheackEmail(email, password);

        if (isExist) {
            message = "Login Successfully";
            alertType = "success";
            resp.sendRedirect("dashboard.jsp");
        } else {
            message = "Invalid email or password!";
            alertType = "error";
        }



    }
}

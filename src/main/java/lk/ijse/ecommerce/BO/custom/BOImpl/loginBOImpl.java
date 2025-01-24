package lk.ijse.ecommerce.BO.custom.BOImpl;

import lk.ijse.ecommerce.BO.custom.loginBO;
import lk.ijse.ecommerce.DAO.custom.DAOImpl.loginDAOImpl;


public class loginBOImpl implements loginBO {
    public boolean cheackEmail(String email, String password) {
        loginDAOImpl loginDAO = new loginDAOImpl();
        return loginDAO.check(email,password);
    }
}

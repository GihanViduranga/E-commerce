package lk.ijse.ecommerce.BO.custom.BOImpl;

import lk.ijse.ecommerce.BO.custom.userBO;
import lk.ijse.ecommerce.DAO.custom.DAOImpl.userDAOImpl;
import lk.ijse.ecommerce.DAO.custom.UserDAO;
import lk.ijse.ecommerce.DTO.userDTO;
import lk.ijse.ecommerce.Entity.User;


public class userBOImpl implements userBO {
    UserDAO userDAO = new userDAOImpl();

    @Override
    public boolean saveUser(userDTO userDTO) {
        return userDAO.addUser(new User(userDTO.getUsername(), userDTO.getEmail(),userDTO.getPassword()));
    }
}

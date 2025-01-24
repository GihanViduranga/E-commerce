package lk.ijse.ecommerce.bo.custom.BOImpl;

import lk.ijse.ecommerce.bo.custom.userBO;
import lk.ijse.ecommerce.dao.custom.daoimpl.userDAOImpl;
import lk.ijse.ecommerce.dao.custom.UserDAO;
import lk.ijse.ecommerce.dto.userDTO;
import lk.ijse.ecommerce.entity.User;


public class userBOImpl implements userBO {
    UserDAO userDAO = new userDAOImpl();

    @Override
    public boolean saveUser(userDTO userDTO) {
        return userDAO.addUser(new User(userDTO.getUsername(), userDTO.getEmail(),userDTO.getPassword()));
    }
}

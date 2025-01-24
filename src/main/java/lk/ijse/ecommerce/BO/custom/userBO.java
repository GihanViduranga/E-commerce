package lk.ijse.ecommerce.BO.custom;

import lk.ijse.ecommerce.BO.SuperBO;
import lk.ijse.ecommerce.DTO.userDTO;

public interface userBO extends SuperBO {
    boolean saveUser(userDTO userDTO);
}

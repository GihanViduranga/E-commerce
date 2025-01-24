package lk.ijse.ecommerce.bo.custom;

import lk.ijse.ecommerce.bo.SuperBO;
import lk.ijse.ecommerce.dto.userDTO;

public interface userBO extends SuperBO {
    boolean saveUser(userDTO userDTO);
}

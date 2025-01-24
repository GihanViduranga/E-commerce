package lk.ijse.ecommerce.BO.custom;

import lk.ijse.ecommerce.BO.SuperBO;

import java.util.List;

public interface loginBO extends SuperBO {
    boolean cheackEmail(String email, String password);
}

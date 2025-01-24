package lk.ijse.ecommerce.bo.custom;

import lk.ijse.ecommerce.bo.SuperBO;

public interface CategoryBO extends SuperBO {
    boolean SaveCategory(String categoryName, String description, String image);
}

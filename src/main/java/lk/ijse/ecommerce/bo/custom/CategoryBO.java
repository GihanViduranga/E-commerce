package lk.ijse.ecommerce.bo.custom;

import lk.ijse.ecommerce.bo.SuperBO;
import lk.ijse.ecommerce.dto.categoryDTO;

import java.util.List;

public interface CategoryBO extends SuperBO {
    boolean SaveCategory(String categoryName, String description, String image);

    List<categoryDTO> categoryList();
}

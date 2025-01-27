package lk.ijse.ecommerce.bo.custom;

import lk.ijse.ecommerce.bo.SuperBO;
import lk.ijse.ecommerce.dto.categoryDTO;
import lk.ijse.ecommerce.dto.productDTO;

import java.util.List;

public interface ProductBO extends SuperBO {

    boolean SaveProduct(productDTO productDTO);

    List<productDTO> getAllProductDTOs();

    boolean updateProduct(productDTO productDTO);

    List<productDTO> getCategoryById(categoryDTO categoryDTO);
}

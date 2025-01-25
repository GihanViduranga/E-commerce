package lk.ijse.ecommerce.bo.custom;

import lk.ijse.ecommerce.bo.SuperBO;
import lk.ijse.ecommerce.dto.productDTO;

public interface ProductBO extends SuperBO {

    boolean SaveProduct(productDTO productDTO);
}

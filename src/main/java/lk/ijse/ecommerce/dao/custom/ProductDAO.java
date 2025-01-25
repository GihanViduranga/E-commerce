package lk.ijse.ecommerce.dao.custom;

import lk.ijse.ecommerce.dao.SuperDAO;
import lk.ijse.ecommerce.entity.Product;

public interface ProductDAO extends SuperDAO {
    boolean save(Product product);
}

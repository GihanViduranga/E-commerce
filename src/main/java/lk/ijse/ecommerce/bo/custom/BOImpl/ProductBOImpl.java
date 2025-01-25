package lk.ijse.ecommerce.bo.custom.BOImpl;

import lk.ijse.ecommerce.bo.custom.ProductBO;
import lk.ijse.ecommerce.dao.DAOFactory;
import lk.ijse.ecommerce.dao.custom.ProductDAO;
import lk.ijse.ecommerce.dto.productDTO;
import lk.ijse.ecommerce.entity.Category;
import lk.ijse.ecommerce.entity.Product;

public class ProductBOImpl implements ProductBO {
    ProductDAO productDAO = (ProductDAO) DAOFactory.getDAOFactory().getDAO(DAOFactory.DAOTypes.PRODUCT);

    @Override
    public boolean SaveProduct(productDTO productDTO) {
        Category category = new Category(productDTO.getCategory().getCategoryId(), productDTO.getCategory().getName(), productDTO.getCategory().getDescription(), productDTO.getCategory().getImage());
        return productDAO.save(new Product(productDTO.getName(),productDTO.getDescription(),productDTO.getPrice(),productDTO.getStock(),category,productDTO.getImagepath()));
    }
}

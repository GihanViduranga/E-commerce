package lk.ijse.ecommerce.bo.custom.BOImpl;

import lk.ijse.ecommerce.bo.custom.CategoryBO;
import lk.ijse.ecommerce.dao.DAOFactory;
import lk.ijse.ecommerce.dao.custom.CategoryDAO;
import lk.ijse.ecommerce.entity.Category;

public class CategoryBOImpl implements CategoryBO {
    CategoryDAO categoryDAO = (CategoryDAO) DAOFactory.getDAOFactory().getDAO(DAOFactory.DAOTypes.CATEGORY);
    @Override
    public boolean SaveCategory(String categoryName, String description, String image) {
        return categoryDAO.save(new Category(categoryName, description, image));
    }
}

package lk.ijse.ecommerce.dao.custom.daoimpl;

import lk.ijse.ecommerce.dao.custom.CategoryDAO;
import lk.ijse.ecommerce.entity.Category;
import lk.ijse.ecommerce.config.FactoryConfiguration;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CategoryDAOImpl implements CategoryDAO {
    @Override
    public boolean save(Category category) {
        Session session = null;
        Transaction transaction = null;

        try{
            session = FactoryConfiguration.getInstance().getSession();
            transaction = session.beginTransaction();
            session.persist(category);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
}

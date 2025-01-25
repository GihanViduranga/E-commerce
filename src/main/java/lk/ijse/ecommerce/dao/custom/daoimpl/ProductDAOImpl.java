package lk.ijse.ecommerce.dao.custom.daoimpl;

import lk.ijse.ecommerce.config.FactoryConfiguration;
import lk.ijse.ecommerce.dao.custom.ProductDAO;
import lk.ijse.ecommerce.entity.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProductDAOImpl implements ProductDAO {

    @Override
    public boolean save(Product product) {
        Session session = null;
        Transaction transaction = null;

        try{
            session = FactoryConfiguration.getInstance().getSession();
            transaction = session.beginTransaction();
            session.save(product);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
            return false;
        }

    }
}

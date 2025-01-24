package lk.ijse.ecommerce.dao.custom.daoimpl;

import lk.ijse.ecommerce.dao.custom.CategoryDAO;
import lk.ijse.ecommerce.dto.categoryDTO;
import lk.ijse.ecommerce.entity.Category;
import lk.ijse.ecommerce.config.FactoryConfiguration;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;
import java.util.stream.Collectors;

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

    @Override
    public List<Category> categoryList() {
        Session session = null;
        Transaction transaction = null;

        try {
            session = FactoryConfiguration.getInstance().getSession();
            transaction = session.beginTransaction();

            // Fetching categories from the database
            Query<Category> query = session.createQuery("FROM Category", Category.class);
            List<Category> categoryList = query.list();



            transaction.commit();
            return categoryList;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return null;
    }}

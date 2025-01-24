package lk.ijse.ecommerce.DAO.custom.DAOImpl;

import lk.ijse.ecommerce.DAO.custom.UserDAO;
import lk.ijse.ecommerce.DAO.custom.loginDAO;
import lk.ijse.ecommerce.Entity.User;
import lk.ijse.ecommerce.config.FactoryConfiguration;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class loginDAOImpl implements loginDAO {

    public boolean check(String email, String password) {
        Session session = FactoryConfiguration.getInstance().getSession();
        Transaction transaction = null;
        boolean isValid = false;

        try {
            transaction = session.beginTransaction();

            // HQL query to check email and password
            String hql = "FROM User WHERE email = :email AND password = :password";
            Query<User> query = session.createQuery(hql, User.class);
            query.setParameter("email", email);
            query.setParameter("password", password);

            // Check if a result exists
            isValid = query.uniqueResult() != null;

            // Commit the transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

        return isValid;
    }


    @Override
    public boolean save(UserDAO dto) {
        return false;
    }
}

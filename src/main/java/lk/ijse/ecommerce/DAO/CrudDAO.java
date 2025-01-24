package lk.ijse.ecommerce.DAO;

public interface CrudDAO<T> extends SuperDAO{
    boolean save(T dto);
}

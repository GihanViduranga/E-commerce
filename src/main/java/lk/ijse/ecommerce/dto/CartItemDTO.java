package lk.ijse.ecommerce.dto;

import lk.ijse.ecommerce.entity.Product;
import lk.ijse.ecommerce.entity.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CartItemDTO {
    private Long id;
    private User user;
    private Product product;
    private Integer quantity;

}

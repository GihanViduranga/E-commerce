package lk.ijse.ecommerce.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class categoryDTO {
    private int categoryId;
    private String name;
    private String description;
    private String image;

    public categoryDTO(String name, String description, String image) {
        this.name = name;
        this.description = description;
        this.image = image;
    }
}

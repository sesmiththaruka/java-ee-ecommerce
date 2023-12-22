package lk.verdana.ecom.dto;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lk.verdana.ecom.entity.Category;

public class ProductDTO {
    private Integer id;
    private String name;
    private String price;
    private String category;
    private String description;
    public ProductDTO() {
    }


    public ProductDTO(Integer id, String name, String price, String category, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

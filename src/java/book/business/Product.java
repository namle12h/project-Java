package book.business;

import java.text.NumberFormat;
import java.io.Serializable;

public class Product implements Serializable {

    private Long productId;    
    private String code;
    private String description;
    private int price;

    public Product() {}

    public Long getId() {
        return productId;
    }

    public void setId(Long productId) {
        this.productId = productId;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public String getArtistName() {
        String artistName = 
                description.substring(0, description.indexOf(" - "));
        return artistName;
    }

    public String getAlbumName() {
        String albumName = 
                description.substring(description.indexOf(" - ") + 3);
        return albumName;
    }

    
    
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }


    public int getPriceCurrencyFormat() {
        return  price;
    } 

    public String getImageURL() {
        String imageURL ="/dean4/images/" + code + "_h2.jpg";
        return imageURL;
    }

    public String getProductType() {
        return "NOVEL";
    }


}
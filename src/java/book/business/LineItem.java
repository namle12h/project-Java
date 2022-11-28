package book.business;

import java.text.NumberFormat;
import java.io.Serializable;

public class LineItem implements Serializable {

    private Long lineItemId;
    private Product product;
    private int quantity = 1;

    public LineItem() {
    }

    public Long getLineItemId() {
        return lineItemId;
    }

    public void setLineItemId(Long lineItemId) {
        this.lineItemId = lineItemId;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getTotal() {
        int total = product.getPrice() * quantity;
        return total;
    }

    public int getTotalCurrencyFormat() {
        this.getTotal();
        return getTotal();
        
    }
}
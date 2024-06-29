package entity;

public class GioHangItem {
    private MatHang product;
    private int quantity;

    public GioHangItem(MatHang product, int quantity) {
        this.product = product;
        setQuantity(quantity); // Use setter to enforce validation
    }

    public MatHang getProduct() {
        return product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        if (quantity > 0) {
            this.quantity = quantity;
        } else {
            throw new IllegalArgumentException("Quantity must be greater than zero");
        }
    }

    public void addQuantity(int quantity) {
        if (quantity > 0) {
            this.quantity += quantity;
        } else {
            throw new IllegalArgumentException("Quantity must be greater than zero");
        }
    }

    public double getTotalPrice() {
        return product.getGia() * quantity;
    }
}

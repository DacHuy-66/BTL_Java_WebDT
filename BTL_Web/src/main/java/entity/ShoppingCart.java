package entity;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
    private Map<String, GioHangItem> items;

    public ShoppingCart() {
        items = new HashMap<>();
    }

    public void addItem(MatHang product, int quantity) {
        if (items.containsKey(product.getMathang_id())) {
            items.get(product.getMathang_id()).addQuantity(quantity);
        } else {
            items.put(product.getMathang_id(), new GioHangItem(product, quantity));
        }
    }

    public void removeItem(String productId) {
        items.remove(productId);
    }

    public void updateItem(String productId, int quantity) {
        if (items.containsKey(productId)) {
            items.get(productId).setQuantity(quantity);
        }
    }

    public void clear() {
        items.clear();
    }

    public boolean isEmpty() {
        return items.isEmpty();
    }

    public Map<String, GioHangItem> getItems() {
        return items;
    }

    public double getTotal() {
        return items.values().stream().mapToDouble(GioHangItem::getTotalPrice).sum();
    }
}

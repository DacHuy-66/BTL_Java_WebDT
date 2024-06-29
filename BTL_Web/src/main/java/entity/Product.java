package entity;

import java.util.ArrayList;
import java.util.List;

public class Product {
    private String phone_id;
    private String thuonghieu;
    private String model;
    private double gia;
    private int soluong; // Changed to int for consistency
    private String thongso;
    private String ncc_id;
    private String image;
    private List<MatHang> matHangList = new ArrayList<>();

    public Product() {}

    public Product(String phone_id, String thuonghieu, String model, double gia, int soluong, String thongso, String ncc_id, String image) {
        this.phone_id = phone_id;
        this.thuonghieu = thuonghieu;
        this.model = model;
        this.gia = gia;
        this.soluong = soluong;
        this.thongso = thongso;
        this.ncc_id = ncc_id;
        this.image = image;
    }

    public String getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(String phone_id) {
        this.phone_id = phone_id;
    }

    public String getThuonghieu() {
        return thuonghieu;
    }

    public void setThuonghieu(String thuonghieu) {
        this.thuonghieu = thuonghieu;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getThongso() {
        return thongso;
    }

    public void setThongso(String thongso) {
        this.thongso = thongso;
    }

    public String getNcc_id() {
        return ncc_id;
    }

    public void setNcc_id(String ncc_id) {
        this.ncc_id = ncc_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void addMatHang(MatHang matHang) {
        this.matHangList.add(matHang);
    }

    public List<MatHang> getMatHangList() {
        return matHangList;
    }

    @Override
    public String toString() {
        return "Product{" +
            "phone_id='" + phone_id + '\'' +
            ", thuonghieu='" + thuonghieu + '\'' +
            ", model='" + model + '\'' +
            ", gia=" + gia +
            ", soluong=" + soluong +
            ", thongso='" + thongso + '\'' +
            ", ncc_id='" + ncc_id + '\'' +
            ", image='" + image + '\'' +
            ", matHangList=" + matHangList +
            '}';
    }
}

package entity;

public class MatHang {
    private String mathang_id;
    private String phone_id;
    private int soluong;
    private String dungluong;
    private String mausac;
    private double gia;

    public MatHang() {
    }

    public MatHang(String mathang_id, String phone_id, int soluong, String dungluong, String mausac, double gia) {
        this.mathang_id = mathang_id;
        this.phone_id = phone_id;
        this.soluong = soluong;
        this.dungluong = dungluong;
        this.mausac = mausac;
        this.gia = gia;
    }

    public String getMathang_id() {
        return mathang_id;
    }

    public void setMathang_id(String mathang_id) {
        this.mathang_id = mathang_id;
    }

    public String getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(String phone_id) {
        this.phone_id = phone_id;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getDungluong() {
        return dungluong;
    }

    public void setDungluong(String dungluong) {
        this.dungluong = dungluong;
    }

    public String getMausac() {
        return mausac;
    }

    public void setMausac(String mausac) {
        this.mausac = mausac;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "MatHang{" +
                "mathang_id='" + mathang_id + '\'' +
                ", phone_id='" + phone_id + '\'' +
                ", soluong=" + soluong +
                ", dungluong='" + dungluong + '\'' +
                ", mausac='" + mausac + '\'' +
                ", gia=" + gia +
                '}';
    }
}

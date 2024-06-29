package entity;

public class DonHang {
    private String donhang_id;
    private String hoten;
    private String sdt;
    private int giohang_id;
    private String diachigiaohang;
    private String image;
    private String model;
    private String dungluong;
    private String mausac;
    private int soluong;
    private double gia;
    private String status;

    public DonHang() {
    }

    public DonHang(String donhang_id, String hoten, String sdt, int giohang_id, String diachigiaohang, String image,
                   String model, String dungluong, String mausac, int soluong, double gia, String status) {
        this.donhang_id = donhang_id;
        this.hoten = hoten;
        this.sdt = sdt;
        this.giohang_id = giohang_id;
        this.diachigiaohang = diachigiaohang;
        this.image = image;
        this.model = model;
        this.dungluong = dungluong;
        this.mausac = mausac;
        this.soluong = soluong;
        this.gia = gia;
        this.status = status;
    }

    public String getDonhang_id() {
        return donhang_id;
    }

    public void setDonhang_id(String donhang_id) {
        this.donhang_id = donhang_id;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public int getGiohang_id() {
        return giohang_id;
    }

    public void setGiohang_id(int giohang_id) {
        this.giohang_id = giohang_id;
    }

    public String getDiachigiaohang() {
        return diachigiaohang;
    }

    public void setDiachigiaohang(String diachigiaohang) {
        this.diachigiaohang = diachigiaohang;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
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

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "DonHang{" +
                "donhang_id='" + donhang_id + '\'' +
                ", hoten='" + hoten + '\'' +
                ", sdt='" + sdt + '\'' +
                ", giohang_id='" + giohang_id + '\'' +
                ", diachigiaohang='" + diachigiaohang + '\'' +
                ", image='" + image + '\'' +
                ", model='" + model + '\'' +
                ", dungluong='" + dungluong + '\'' +
                ", mausac='" + mausac + '\'' +
                ", soluong='" + soluong + '\'' +
                ", gia=" + gia +
                ", status='" + status + '\'' +
                '}';
    }
}

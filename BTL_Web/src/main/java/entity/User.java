package entity;

import java.util.Date;

public class User {
    private String username;
    private String hoten;
    private String password;
    private String email;
    private int gioitinh;
    private Date ngaysinh;
    private String sdt;
    private String diachi;

    public User() {
    }

    public User(String username, String hoten, String password, String email, int gioitinh, Date ngaysinh, String sdt, String diachi) {
        this.username = username;
        this.hoten = hoten;
        this.password = password;
        this.email = email;
        this.gioitinh = gioitinh;
        this.ngaysinh = ngaysinh;
        this.sdt = sdt;
        this.diachi = diachi;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(int gioitinh) {
        this.gioitinh = gioitinh;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", hoten='" + hoten + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", gioitinh=" + gioitinh +
                ", ngaysinh=" + ngaysinh +
                ", sdt='" + sdt + '\'' +
                ", diachi='" + diachi + '\'' +
                '}';
    }
}

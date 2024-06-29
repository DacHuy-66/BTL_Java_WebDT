package entity;

import java.sql.Date;

public class ThanhToan {
	private String payment_id;
	private String donhang_id;
	private int sotienthanhtoan;
	private String phuongthucthanhtoan;
	private Date ngaythanhtoan;

	public ThanhToan() {

	}

	public ThanhToan(String payment_id, String donhang_id, int sotienthanhtoan, String phuongthucthanhtoan,
			Date ngaythanhtoan) {
		this.payment_id = payment_id;
		this.donhang_id = donhang_id;
		this.sotienthanhtoan = sotienthanhtoan;
		this.phuongthucthanhtoan = phuongthucthanhtoan;
		this.ngaythanhtoan = ngaythanhtoan;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public String getDonhang_id() {
		return donhang_id;
	}

	public void setDonhang_id(String donhang_id) {
		this.donhang_id = donhang_id;
	}

	public int getSotienthanhtoan() {
		return sotienthanhtoan;
	}

	public void setSotienthanhtoan(int sotienthanhtoan) {
		this.sotienthanhtoan = sotienthanhtoan;
	}

	public String getPhuongthucthanhtoan() {
		return phuongthucthanhtoan;
	}

	public void setPhuongthucthanhtoan(String phuongthucthanhtoan) {
		this.phuongthucthanhtoan = phuongthucthanhtoan;
	}

	public Date getNgaythanhtoan() {
		return ngaythanhtoan;
	}

	public void setNgaythanhtoan(Date ngaythanhtoan) {
		this.ngaythanhtoan = ngaythanhtoan;
	}
	
	@Override
    public String toString() {
        return "User{" +
                "payment_id='" + payment_id + '\'' +
                ", donhang_id='" + donhang_id + '\'' +
                ", sotienthanhtoan='" + sotienthanhtoan + '\'' +
                ", phuongthucthanhtoan='" + phuongthucthanhtoan + '\'' +
                ", ngaythanhtoan=" + ngaythanhtoan +
                '}';
    }
}

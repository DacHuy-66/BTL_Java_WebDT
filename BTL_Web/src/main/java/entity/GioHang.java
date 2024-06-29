package entity;

public class GioHang {
	private int giohang_id;
	private String image;
	private String model;
	private double gia;
	private int soluong;
	private String dungluong;
	private String mausac;
	
	
	public GioHang() {
		
	}
	public GioHang(int giohang_id, String image, String model, double gia, int soluong, String dungluong, String mausac) {
		this.giohang_id = giohang_id;
		this.image = image;
		this.model= model;
		this.gia = gia;
		this.soluong = soluong;
		this.dungluong = dungluong;
		this.mausac = mausac;
	}
	
	public int getGiohang_id() {
		return giohang_id;
	}
	public void setGiohang_id(int giohang_id) {
		this.giohang_id= giohang_id;
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
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia= gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong= soluong;
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
	@Override
	public String toString() {
		return "GioHang{" + "giohang_id='" + giohang_id + '\'' + ", image='" + image + '\'' + ", model='"
				+ model + '\'' + ", gia='" + gia + '\'' + ", soluong=" + soluong + '\'' + "dungluong='"+ dungluong +'\''+", mausac='"+ mausac+ '}';
	}
}

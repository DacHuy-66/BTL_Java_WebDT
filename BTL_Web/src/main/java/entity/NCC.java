package entity;

public class NCC {
    private String ncc_id;
    private String ten_ncc;
    private String info;
    private String banner;

    
    public NCC() {
    	
    }
    public NCC (String ncc_id, String ten_ncc, String info,String banner) {
        this.ncc_id = ncc_id;
        this.ten_ncc = ten_ncc;
        this.info = info;
        this.banner = banner;
    }
    
    public String getNcc_id() {
        return ncc_id;
    }

    public void setNcc_id(String ncc_id) {
        this.ncc_id = ncc_id;
    }
    
    public String getTen_ncc() {
        return ten_ncc;
    }

    public void setTen_ncc(String ten_ncc) {
        this.ten_ncc = ten_ncc;
    }
    
    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
    
    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }
    
    @Override
    public String toString() {
        return "Product{" +
            "ncc_id=" + ncc_id  +", ten_ncc=" + ten_ncc +", info=" + info +", banner=" + banner +'}';
    }
}

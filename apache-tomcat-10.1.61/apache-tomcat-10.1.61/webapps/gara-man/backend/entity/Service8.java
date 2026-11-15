package backend.entity;

public class Service8 {
    private int id;
    private String maDV;
    private String tenDV;
    private int donGia;

    public Service8() {
    }

    public Service8(
            int id,
            String maDV,
            String tenDV,
            int donGia) {
        this.id = id;
        this.maDV = maDV;
        this.tenDV = tenDV;
        this.donGia = donGia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaDV() {
        return maDV;
    }

    public void setMaDV(String maDV) {
        this.maDV = maDV;
    }

    public String getTenDV() {
        return tenDV;
    }

    public void setTenDV(String tenDV) {
        this.tenDV = tenDV;
    }

    public int getDonGia() {
        return donGia;
    }

    public void setDonGia(int donGia) {
        this.donGia = donGia;
    }
}

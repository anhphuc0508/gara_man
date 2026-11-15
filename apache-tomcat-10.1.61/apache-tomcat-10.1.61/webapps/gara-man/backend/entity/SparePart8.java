package backend.entity;

public class SparePart8 {
    private int id;
    private String maPhuTung;
    public String ten;
    private int donGia;
    private int donVi;

    public SparePart8() {
    }

    public SparePart8(
            int id,
            String maPhuTung,
            String ten,
            int donGia,
            int donVi) {
        this.id = id;
        this.maPhuTung = maPhuTung;
        this.ten = ten;
        this.donGia = donGia;
        this.donVi = donVi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaPhuTung() {
        return maPhuTung;
    }

    public void setMaPhuTung(String maPhuTung) {
        this.maPhuTung = maPhuTung;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getDonGia() {
        return donGia;
    }

    public void setDonGia(int donGia) {
        this.donGia = donGia;
    }

    public int getDonVi() {
        return donVi;
    }

    public void setDonVi(int donVi) {
        this.donVi = donVi;
    }
}

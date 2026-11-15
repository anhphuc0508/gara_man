package backend.entity;

public class SparePartDetail8 {
    private int id;
    private int soLuong;
    private Integer soLuongSuDung;
    private int donGiaXuat;
    private SparePart8 phuTung;

    public SparePartDetail8() {
    }

    public SparePartDetail8(
            int id,
            int soLuong,
            int donGiaXuat,
            SparePart8 phuTung) {
        this.id = id;
        this.soLuong = soLuong;
        this.donGiaXuat = donGiaXuat;
        this.phuTung = phuTung;
    }

    public SparePartDetail8(
            int id,
            int soLuong,
            Integer soLuongSuDung,
            int donGiaXuat,
            SparePart8 phuTung) {
        this(id, soLuong, donGiaXuat, phuTung);
        this.soLuongSuDung = soLuongSuDung;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public Integer getSoLuongSuDung() {
        return soLuongSuDung;
    }

    public void setSoLuongSuDung(Integer soLuongSuDung) {
        this.soLuongSuDung = soLuongSuDung;
    }

    public int getDonGiaXuat() {
        return donGiaXuat;
    }

    public void setDonGiaXuat(int donGiaXuat) {
        this.donGiaXuat = donGiaXuat;
    }

    public SparePart8 getPhuTung() {
        return phuTung;
    }

    public void setPhuTung(SparePart8 phuTung) {
        this.phuTung = phuTung;
    }
}

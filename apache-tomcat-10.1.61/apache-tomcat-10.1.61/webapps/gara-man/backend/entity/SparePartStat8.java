package backend.entity;

public class SparePartStat8 extends SparePart8 {
    private int tongTien;
    private int tongPT;

    public SparePartStat8() {
        super();
    }

    public SparePartStat8(
            int id,
            String maPhuTung,
            String ten,
            int donGia,
            int donVi,
            int tongTien,
            int tongPT) {
        super(id, maPhuTung, ten, donGia, donVi);
        this.tongTien = tongTien;
        this.tongPT = tongPT;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public int getTongPT() {
        return tongPT;
    }

    public void setTongPT(int tongPT) {
        this.tongPT = tongPT;
    }
    public void setTenPhuTung(String ten){
        this.ten = ten;
    }
    
}

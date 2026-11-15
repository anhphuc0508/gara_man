package backend.entity;

public class ServiceStat8 extends Service8 {
    private int tongTien;
    private int tongDV;

    public ServiceStat8() {
        super();
    }

    public ServiceStat8(
            int id,
            String maDV,
            String tenDV,
            int donGia,
            int tongTien,
            int tongDV) {
        super(id, maDV, tenDV, donGia);
        this.tongTien = tongTien;
        this.tongDV = tongDV;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public int getTongDV() {
        return tongDV;
    }

    public void setTongDV(int tongDV) {
        this.tongDV = tongDV;
    }
}

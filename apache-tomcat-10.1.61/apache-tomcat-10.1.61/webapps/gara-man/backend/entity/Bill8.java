package backend.entity;

import java.util.Date;

public class Bill8 {
    private int id;
    private Date ngayLap;
    private Date ngayThanhToan;
    private String maHD;
    private BillDetail8 bd;
    private SaleStaff8 nv;
    public Bill8() {
    }

    public Bill8(
            int id,
            Date ngayLap,
            Date ngayThanhToan,
            String maHD,
            BillDetail8 bd) {
        this.id = id;
        this.ngayLap = ngayLap;
        this.ngayThanhToan = ngayThanhToan;
        this.maHD = maHD;
        this.bd = bd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayLap() {
        return ngayLap;
    }

    public void setNgayLap(Date ngayLap) {
        this.ngayLap = ngayLap;
    }

    public Date getNgayThanhToan() {
        return ngayThanhToan;
    }

    public void setNgayThanhToan(Date ngayThanhToan) {
        this.ngayThanhToan = ngayThanhToan;
    }

    public String getMaHD() {
        return maHD;
    }

    public void setMaHD(String maHD) {
        this.maHD = maHD;
    }

    public BillDetail8 getBd() {
        return bd;
    }

    public void setBd(BillDetail8 bd) {
        this.bd = bd;
    }
    public SaleStaff8 getNV(){
        return nv;
    }

    public void setNV(SaleStaff8 nv) {
        this.nv = nv;
    }
}

package backend.entity;

import java.util.Date;

public class AssignDetail8 {
    private int id;
    private String nhiemVu;
    private Date thoiGianPhanCong;
    private TechnicalStaff8 ts;

    public AssignDetail8() {
    }

    public AssignDetail8(
            int id,
            String nhiemVu,
            Date thoiGianPhanCong,
            TechnicalStaff8 ts) {
        this.id = id;
        this.nhiemVu = nhiemVu;
        this.thoiGianPhanCong = thoiGianPhanCong;
        this.ts = ts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNhiemVu() {
        return nhiemVu;
    }

    public void setNhiemVu(String nhiemVu) {
        this.nhiemVu = nhiemVu;
    }

    public Date getThoiGianPhanCong() {
        return thoiGianPhanCong;
    }

    public void setThoiGianPhanCong(Date thoiGianPhanCong) {
        this.thoiGianPhanCong = thoiGianPhanCong;
    }

    public TechnicalStaff8 getTs() {
        return ts;
    }

    public void setTs(TechnicalStaff8 ts) {
        this.ts = ts;
    }
}

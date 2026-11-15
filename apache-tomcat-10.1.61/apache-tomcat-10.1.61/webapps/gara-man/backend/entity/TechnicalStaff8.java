package backend.entity;

public class TechnicalStaff8 extends Staff8 {
    private String chuyenMon;

    public TechnicalStaff8() {
        super();
    }

    public TechnicalStaff8(
            int id,
            String matKhau,
            String taiKhoan,
            String hoTen,
            String SDT,
            String email,
            Member8.vaiTro vaiTro,
            String chuyenMon) {
        super(id, matKhau, taiKhoan, hoTen, SDT, email, vaiTro);
        this.chuyenMon = chuyenMon;
    }

    public String getChuyenMon() {
        return chuyenMon;
    }

    public void setChuyenMon(String chuyenMon) {
        this.chuyenMon = chuyenMon;
    }
}

package backend.entity;

public class CustomerStat8 extends Customer8 {
    private int tongKH;

    public CustomerStat8() {
        super();
    }

    public CustomerStat8(int id, String matKhau, String taiKhoan, String hoTen, String SDT, String email, Member8.vaiTro vaiTro, int tongKH) {
        super(id, matKhau, taiKhoan, hoTen, SDT, email, vaiTro);
        this.tongKH = tongKH;
    }

    public int getTongKH() {
        return tongKH;
    }

    public void setTongKH(int tongKH) {
        this.tongKH = tongKH;
    }
}

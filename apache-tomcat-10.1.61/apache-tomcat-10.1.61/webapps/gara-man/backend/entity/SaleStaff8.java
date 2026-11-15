package backend.entity;

public class SaleStaff8 extends Staff8 {
    public SaleStaff8() {
        super();
    }

    public SaleStaff8(
            int id,
            String matKhau,
            String taiKhoan,
            String hoTen,
            String SDT,
            String email,
            Member8.vaiTro vaiTro) {
        super(id, matKhau, taiKhoan, hoTen, SDT, email, vaiTro);
    }
}

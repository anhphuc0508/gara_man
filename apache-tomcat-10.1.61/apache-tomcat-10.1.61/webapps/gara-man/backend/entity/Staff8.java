package backend.entity;

public class Staff8 extends Member8 {
    public Staff8() {
        super();
    }

    public Staff8(
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

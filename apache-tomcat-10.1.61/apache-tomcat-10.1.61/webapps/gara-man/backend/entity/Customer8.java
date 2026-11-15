package backend.entity;

public class Customer8 extends Member8 {

    public Customer8() {
        super();
    }

    public Customer8(
            int id,
            String matKhau,
            String taiKhoan,
            String hoTen,
            String SDT,
            String email,
            Member8.vaiTro vaiTro) {
        super(id, matKhau, taiKhoan, hoTen, SDT, email, vaiTro);
    }
    @Override
    public void setId(int id){
        this.id = id;
    }
}

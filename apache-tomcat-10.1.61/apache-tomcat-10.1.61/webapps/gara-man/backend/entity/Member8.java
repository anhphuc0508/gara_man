package backend.entity;

public class Member8 {
    public enum vaiTro {
        ADMIN,
        USER,
        STAFF
    }

    public int id;
    private String matKhau;
    private String taiKhoan;
    private String hoTen;
    private String SDT;
    private String email;
    private Member8.vaiTro vaiTro;

    public Member8() {
    }

    public Member8(int id, String matKhau, String taiKhoan, String hoTen, String SDT, String email, Member8.vaiTro vaiTro) {
        this.id = id;
        this.matKhau = matKhau;
        this.taiKhoan = taiKhoan;
        this.hoTen = hoTen;
        this.SDT = SDT;
        this.email = email;
        this.vaiTro = vaiTro;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Member8.vaiTro getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(Member8.vaiTro vaiTro) {
        this.vaiTro = vaiTro;
    }
}

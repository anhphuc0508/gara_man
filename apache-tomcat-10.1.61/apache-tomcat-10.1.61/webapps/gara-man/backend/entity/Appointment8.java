package backend.entity;

public class Appointment8 {

    private int id;
    private String ngayHen;
    private String gioHen;
    private Customer8 khachHang;
    public Appointment8() {
        super();
    }

    public Appointment8(int id, String ngayHen, String gioHen) {
        this.id = id;
        this.ngayHen = ngayHen;
        this.gioHen = gioHen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNgayHen() {
        return ngayHen;
    }

    public void setNgayHen(String ngayHen) {
        this.ngayHen = ngayHen;
    }

    public String getGioHen() {
        return gioHen;
    }

    public void setGioHen(String gioHen) {
        this.gioHen = gioHen;
    }
    

    public Customer8 getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(Customer8 khachHang) {
        this.khachHang = khachHang;
    }
}

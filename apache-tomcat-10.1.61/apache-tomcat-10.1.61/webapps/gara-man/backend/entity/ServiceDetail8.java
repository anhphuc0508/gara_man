package backend.entity;

public class ServiceDetail8 {
    private int id;
    private int thanhTien;
    private Service8 dv;

    public ServiceDetail8() {
    }

    public ServiceDetail8(
            int id,
            int thanhTien,
            Service8 dv) {
        this.id = id;
        this.thanhTien = thanhTien;
        this.dv = dv;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(int thanhTien) {
        this.thanhTien = thanhTien;
    }

    public Service8 getDv() {
        return dv;
    }

    public void setDv(Service8 du) {
        this.dv = du;
    }
}

package backend.entity;
public class ServiceRequestReceipt8 {
    private int id;
    private String ngayLap;
    private String bienSoXe;
    private String loaiXe;
    private String moTa;
    private Appointment8 lichHen;
    private ServiceDetail8[] dsChiTietDichVu;
    private SparePartDetail8[] dsChiTietPhuTung;
    private AssignDetail8[] dsPhanCong;

    public ServiceRequestReceipt8() {
    }

    public ServiceRequestReceipt8(
            int id,
            String ngayLap,
            String bienSoXe,
            String loaiXe,
            String moTa,
            Appointment8 lichHen,
            ServiceDetail8[] dsChiTietDichVu,
            SparePartDetail8[] dsChiTietPhuTung,
            AssignDetail8[] dsPhanCong) {
        this.id = id;
        this.ngayLap = ngayLap;
        this.bienSoXe = bienSoXe;
        this.loaiXe = loaiXe;
        this.moTa = moTa;
        this.lichHen = lichHen;
        this.dsChiTietDichVu = dsChiTietDichVu;
        this.dsChiTietPhuTung = dsChiTietPhuTung;
        this.dsPhanCong = dsPhanCong;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNgayLap() {
        return ngayLap;
    }

    public void setNgayLap(String ngayLap) {
        this.ngayLap = ngayLap;
    }

    public String getBienSoXe() {
        return bienSoXe;
    }

    public void setBienSoXe(String bienSoXe) {
        this.bienSoXe = bienSoXe;
    }

    public String getLoaiXe() {
        return loaiXe;
    }

    public void setLoaiXe(String loaiXe) {
        this.loaiXe = loaiXe;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Appointment8 getLichHen() {
        return lichHen;
    }

    public void setLichHen(Appointment8 lichHen) {
        this.lichHen = lichHen;
    }

    public ServiceDetail8[] getDsChiTietDichVu() {
        return dsChiTietDichVu;
    }

    public void setDsChiTietDichVu(ServiceDetail8[] dsChiTietDichVu) {
        this.dsChiTietDichVu = dsChiTietDichVu;
    }

    public SparePartDetail8[] getDsChiTietPhuTung() {
        return dsChiTietPhuTung;
    }

    public void setDsChiTietPhuTung(SparePartDetail8[] dsChiTietPhuTung) {
        this.dsChiTietPhuTung = dsChiTietPhuTung;
    }

    public AssignDetail8[] getDsPhanCong() {
        return dsPhanCong;
    }

    public void setDsPhanCong(AssignDetail8[] dsPhanCong) {
        this.dsPhanCong = dsPhanCong;
    }
}

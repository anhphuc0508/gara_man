package backend.entity;

public class BillDetail8 {
    private int id;
    private int tongTien;
    private ServiceRequestReceipt8 phieuYeuCau;


    public BillDetail8() {
    }

    public BillDetail8(
            int id,
            int tongTien,
            ServiceRequestReceipt8 phieuYeuCau) {
        this.id = id;
        this.tongTien = tongTien;
        this.phieuYeuCau = phieuYeuCau;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public ServiceRequestReceipt8 getPhieuYeuCau() {
        return phieuYeuCau;
    }

    public void setPhieuYeuCau(ServiceRequestReceipt8 phieuYeuCau) {
        this.phieuYeuCau = phieuYeuCau;
    }
    

}

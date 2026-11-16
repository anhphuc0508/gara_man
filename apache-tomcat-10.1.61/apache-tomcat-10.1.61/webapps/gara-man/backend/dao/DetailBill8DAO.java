package backend.dao;

import backend.entity.*;
import java.sql.*;
import java.util.ArrayList;

public class DetailBill8DAO extends DAO {

    public DetailBill8DAO() throws Exception {
        super();
    }

    public Bill8 getChiTietHoaDon(int idHoaDon) throws SQLException {
        Bill8 hoaDon = new Bill8();
        BillDetail8 chiTietHoaDon = new BillDetail8();
        ServiceRequestReceipt8 phieu = new ServiceRequestReceipt8();
        Appointment8 lichHen = new Appointment8();
        Customer8 kh = new Customer8();

        // 1. Lấy hóa đơn, phiếu, lịch hẹn, khách hàng và nhân viên lập.
        String sqlHoaDon = """
            SELECT hd.id, hd.maHD, hd.ngayLap, hd.ngayThanhToan,
                   bd.id AS idChiTietHoaDon,
                   p.id AS idPhieu, p.ngayLap AS ngayLapPhieu,
                   p.bienSoXe, p.loaiXe, p.moTa,
                   lh.id AS idLichHen, lh.ngayHen, lh.gioHen,
                   kh.id AS idKH, tv.hoTen, tv.SDT, tv.email,
                   nv.id AS idNhanVienLap, tvnv.hoTen AS tenNhanVienLap
            FROM tblBill8 hd
            JOIN tblBillDetail8 bd ON bd.tblBill8id = hd.id
            JOIN tblServiceRequestReceipt8 p
                ON p.id = bd.tblServiceRequestReceipt8id
            JOIN tblAppointment8 lh ON lh.id = p.tblAppointment8id
            JOIN tblCustomer8 kh ON kh.id = lh.tblCustomer8id
            JOIN tblMember8 tv ON tv.id = kh.tblMember8id
            LEFT JOIN tblSaleStaff8 nv ON nv.id = hd.tblSaleStaff8id
            LEFT JOIN tblStaff8 s ON s.id = nv.tblStaff8id
            LEFT JOIN tblMember8 tvnv ON tvnv.id = s.tblMember8id
            WHERE hd.id = ?
            """;

        try (PreparedStatement ps = con.prepareStatement(sqlHoaDon)) {
            ps.setInt(1, idHoaDon);

            try (ResultSet rs = ps.executeQuery()) {
                if (!rs.next()) {
                    return null;
                }

                hoaDon.setId(rs.getInt("id"));
                hoaDon.setMaHD(rs.getString("maHD"));
                hoaDon.setNgayLap(Date.valueOf(rs.getString("ngayLap")));
                hoaDon.setNgayThanhToan(
                        Date.valueOf(rs.getString("ngayThanhToan")));

                int idNhanVienLap = rs.getInt("idNhanVienLap");
                if (!rs.wasNull()) {
                    SaleStaff8 nv = new SaleStaff8();
                    nv.setId(idNhanVienLap);
                    nv.setHoTen(rs.getString("tenNhanVienLap"));
                    hoaDon.setNV(nv);
                }

                kh.setId(rs.getInt("idKH"));
                kh.setHoTen(rs.getString("hoTen"));
                kh.setSDT(rs.getString("SDT"));
                kh.setEmail(rs.getString("email"));

                lichHen.setId(rs.getInt("idLichHen"));
                lichHen.setNgayHen(rs.getString("ngayHen"));
                lichHen.setGioHen(rs.getString("gioHen"));
                lichHen.setKhachHang(kh);

                phieu.setId(rs.getInt("idPhieu"));
                phieu.setNgayLap(rs.getString("ngayLapPhieu"));
                phieu.setBienSoXe(rs.getString("bienSoXe"));
                phieu.setLoaiXe(rs.getString("loaiXe"));
                phieu.setMoTa(rs.getString("moTa"));
                phieu.setLichHen(lichHen);

                chiTietHoaDon.setId(rs.getInt("idChiTietHoaDon"));

                if (rs.next()) {
                    throw new SQLException(
                            "Bill8 hiện chỉ hỗ trợ một phiếu cho mỗi hóa đơn.");
                }
            }
        }

        // 2. Lấy các dịch vụ thuộc phiếu của hóa đơn.
        ArrayList<ServiceDetail8> dsDichVu = new ArrayList<>();
        long tongTien = 0;

        String sqlDichVu = """
            SELECT ct.id, ct.thanhTien,
                   dv.id AS idDV, dv.maDV, dv.tenDV, dv.donGia
            FROM tblServiceDetail8 ct
            JOIN tblService8 dv ON dv.id = ct.tblService8id
            WHERE ct.tblServiceRequestReceipt8id = ?
            ORDER BY ct.id
            """;

        try (PreparedStatement ps = con.prepareStatement(sqlDichVu)) {
            ps.setInt(1, phieu.getId());

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Service8 dv = new Service8();
                    dv.setId(rs.getInt("idDV"));
                    dv.setMaDV(rs.getString("maDV"));
                    dv.setTenDV(rs.getString("tenDV"));
                    dv.setDonGia(rs.getInt("donGia"));

                    ServiceDetail8 ct = new ServiceDetail8();
                    ct.setId(rs.getInt("id"));
                    ct.setDv(dv);
                    ct.setThanhTien(rs.getInt("thanhTien"));

                    dsDichVu.add(ct);
                    tongTien += ct.getThanhTien();
                }
            }
        }

        // 3. Lấy các phụ tùng và số lượng đã sử dụng.
        ArrayList<SparePartDetail8> dsPhuTung = new ArrayList<>();

        String sqlPhuTung = """
            SELECT ct.id, ct.soLuong, ct.soLuongSuDung, ct.donGiaXuat,
                   pt.id AS idPT, pt.maPhuTung, pt.ten
            FROM tblSparePartDetail8 ct
            JOIN tblSparePart8 pt ON pt.id = ct.tblSparePart8id
            WHERE ct.tblServiceRequestReceipt8id = ?
            ORDER BY ct.id
            """;

        try (PreparedStatement ps = con.prepareStatement(sqlPhuTung)) {
            ps.setInt(1, phieu.getId());

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    SparePart8 pt = new SparePart8();
                    pt.setId(rs.getInt("idPT"));
                    pt.setMaPhuTung(rs.getString("maPhuTung"));
                    pt.setTen(rs.getString("ten"));

                    SparePartDetail8 ct = new SparePartDetail8();
                    ct.setId(rs.getInt("id"));
                    ct.setPhuTung(pt);
                    ct.setSoLuong(rs.getInt("soLuong"));
                    ct.setDonGiaXuat(rs.getInt("donGiaXuat"));

                    int soLuongDung = rs.getInt("soLuongSuDung");

                    if (rs.wasNull()) {
                        throw new SQLException(
                                "Chưa nhập số lượng sử dụng cho chi tiết "
                                + ct.getId());
                    }

                    ct.setSoLuongSuDung(soLuongDung);

                    dsPhuTung.add(ct);
                    tongTien += (long) soLuongDung * ct.getDonGiaXuat();
                }
            }
        }

        // Gắn các đối tượng với nhau rồi trả về hóa đơn.
        phieu.setDsChiTietDichVu(
                dsDichVu.toArray(new ServiceDetail8[0]));

        phieu.setDsChiTietPhuTung(
                dsPhuTung.toArray(new SparePartDetail8[0]));

        chiTietHoaDon.setPhieuYeuCau(phieu);
        chiTietHoaDon.setTongTien(Math.toIntExact(tongTien));

        hoaDon.setBd(chiTietHoaDon);

        return hoaDon;
    }
}

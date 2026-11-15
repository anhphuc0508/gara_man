package backend.dao;

import backend.entity.Bill8;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Bill8DAO extends DAO {

    public Bill8DAO() throws Exception {
        super();
    }

    public ArrayList<Bill8> getHoaDon(
            int id, String ngayBatDau, String ngayKetThuc, String loai)
            throws SQLException {

        String bangChiTiet;
        String cotHangMuc;

        if ("dich-vu".equals(loai)) {
            bangChiTiet = "tblServiceDetail8";
            cotHangMuc = "tblService8id";
        } else if ("phu-tung".equals(loai)) {
            bangChiTiet = "tblSparePartDetail8";
            cotHangMuc = "tblSparePart8id";
        } else {
            throw new SQLException("Loại thống kê không hợp lệ.");
        }

        String sql = "SELECT DISTINCT b.id, b.maHD, b.ngayLap, b.ngayThanhToan"
                + " FROM tblBill8 b"
                + " JOIN tblBillDetail8 bd ON bd.tblBill8id = b.id"
                + " JOIN " + bangChiTiet + " ct"
                + " ON ct.tblServiceRequestReceipt8id = bd.tblServiceRequestReceipt8id"
                + " WHERE b.ngayThanhToan BETWEEN ? AND ?"
                + " AND ct." + cotHangMuc + " = ?"
                + " ORDER BY b.ngayThanhToan DESC, b.id DESC";

        ArrayList<Bill8> danhSach = new ArrayList<>();

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, ngayBatDau);
            ps.setString(2, ngayKetThuc);
            ps.setInt(3, id);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Bill8 bill = new Bill8();
                    bill.setId(rs.getInt("id"));
                    bill.setMaHD(rs.getString("maHD"));

                    bill.setNgayLap(java.sql.Date.valueOf(rs.getString("ngayLap")));
                    bill.setNgayThanhToan(
                            java.sql.Date.valueOf(rs.getString("ngayThanhToan")));

                    danhSach.add(bill);
                }
            }
        }

        return danhSach;
    }
}

package backend.dao;

import backend.entity.SparePartStat8;
import java.sql.*;
import java.util.ArrayList;

public class SparePartStat8DAO extends DAO {
   public SparePartStat8DAO() throws Exception {
        super();
    }

    public ArrayList<SparePartStat8> getTKPhuTung(String batDau, String ketThuc) throws SQLException {
        ArrayList<SparePartStat8> arr = new ArrayList<>();
        String sql
                = "SELECT pt.id, pt.maPhuTung, pt.ten, SUM(ct.soLuong) AS tongSoLuong, SUM(ct.soLuong * ct.donGiaXuat) AS doanhThu"
                + " FROM tblSparePart8 pt"
                + " JOIN tblSparePartDetail8 ct"
                + " ON ct.tblSparePart8id = pt.id"
                + " JOIN tblBillDetail8 cthd"
                + " ON cthd.tblServiceRequestReceipt8id = ct.tblServiceRequestReceipt8id"
                + " JOIN tblBill8 hd"
                + " ON hd.id = cthd.tblBill8id"
                + " WHERE hd.ngayThanhToan BETWEEN ? AND ?"
                + " GROUP BY pt.id, pt.maPhuTung, pt.ten"
                + " ORDER BY doanhThu DESC";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, batDau);
        ps.setString(2, ketThuc);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                SparePartStat8 pt = new SparePartStat8();
                pt.setMaPhuTung(rs.getString("maPhuTung"));
                pt.setTen(rs.getString("ten"));
                pt.setTongTien(rs.getInt("doanhThu"));
                pt.setId(rs.getInt("id"));
                arr.add(pt);
            }

        }
        return arr;
    }
}

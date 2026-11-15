package backend.dao;

import backend.entity.ServiceStat8;
import java.sql.*;
import java.util.ArrayList;

public class ServiceStat8DAO extends DAO {

    public ServiceStat8DAO() throws Exception {
        super();
    }

    public ArrayList<ServiceStat8> getDichVu(String batDau, String ketThuc) throws SQLException {
        ArrayList<ServiceStat8> arr = new ArrayList<>();
        String sql
                = "SELECT dv.id, dv.maDV, dv.tenDV, SUM(ct.thanhTien) AS doanhThu"
                + " FROM tblService8 dv"
                + " JOIN tblServiceDetail8 ct"
                + " ON ct.tblService8id = dv.id"
                + " JOIN tblBillDetail8 cthd"
                + " ON cthd.tblServiceRequestReceipt8id = ct.tblServiceRequestReceipt8id"
                + " JOIN tblBill8 hd"
                + " ON hd.id = cthd.tblBill8id"
                + " WHERE hd.ngayThanhToan BETWEEN ? AND ?"
                + " GROUP BY dv.id, dv.maDV, dv.tenDV"
                + " ORDER BY doanhThu DESC";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, batDau);
        ps.setString(2, ketThuc);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                ServiceStat8 dv = new ServiceStat8();
                dv.setMaDV(rs.getString("maDV"));
                dv.setTenDV(rs.getString("tenDV"));
                dv.setTongTien(rs.getInt("doanhThu"));
                dv.setId(rs.getInt("id"));
                arr.add(dv);
            }

        }
        return arr;
    }
}

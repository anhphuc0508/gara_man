package backend.dao;

import backend.entity.Customer8;
import backend.entity.ManagementStaff8;
import backend.entity.Member8;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Member8DAO extends DAO {
    public Member8DAO() throws Exception {
        super();
    }

    public Member8 dangNhap(String taiKhoan, String matKhau) throws SQLException {
        String sql = "SELECT m.taiKhoan, m.hoTen, m.SDT, m.email, m.vaiTro, "
                + "c.id AS idKhachHang, ql.id AS idQuanLy "
                + "FROM tblMember8 m "
                + "LEFT JOIN tblCustomer8 c ON c.tblMember8id = m.id "
                + "LEFT JOIN tblStaff8 s ON s.tblMember8id = m.id "
                + "LEFT JOIN tblManagementStaff8 ql ON ql.tblStaff8id = s.id "
                + "WHERE m.taiKhoan = ? AND m.matKhau = ?";

        try (PreparedStatement statement = con.prepareStatement(sql)) {
            statement.setString(1, taiKhoan);
            statement.setString(2, matKhau);
            try (ResultSet result = statement.executeQuery()) {
                if (!result.next()) return null;

                Member8 thanhVien;
                if ("ADMIN".equals(result.getString("vaiTro")) && result.getInt("idQuanLy") > 0) {
                    thanhVien = new ManagementStaff8();
                    thanhVien.setId(result.getInt("idQuanLy"));
                    thanhVien.setVaiTro(Member8.vaiTro.ADMIN);
                } else if ("USER".equals(result.getString("vaiTro")) && result.getInt("idKhachHang") > 0) {
                    thanhVien = new Customer8();
                    thanhVien.setId(result.getInt("idKhachHang"));
                    thanhVien.setVaiTro(Member8.vaiTro.USER);
                } else {
                    return null;
                }

                thanhVien.setTaiKhoan(result.getString("taiKhoan"));
                thanhVien.setHoTen(result.getString("hoTen"));
                thanhVien.setSDT(result.getString("SDT"));
                thanhVien.setEmail(result.getString("email"));
                // Khong dua mat khau vao doi tuong luu trong session.
                return result.next() ? null : thanhVien;
            }
        }
    }
}

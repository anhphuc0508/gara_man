package backend.dao;

import backend.entity.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Appointment8DAO extends DAO {
    public Appointment8DAO() throws Exception {
        super();
    }

    public boolean kiemTraKhungGio(String ngayHen , String gioHen) throws SQLException {
        String sql = "SELECT COUNT(*) FROM tblAppointment8 WHERE ngayHen = ? AND gioHen = ?";
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, ngayHen);
        ps.setString(2, gioHen);
        try (ResultSet rs = ps.executeQuery()){
            rs.next();
            return rs.getInt(1) == 0;
        }

    }
    public boolean saveLichHen(Appointment8 lichHen) throws SQLException{
        String sql = "INSERT INTO tblAppointment8 (ngayHen, gioHen , tblCustomer8id) VALUES (?, ?, ?)";
        try (PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, lichHen.getNgayHen());
            ps.setString(2, lichHen.getGioHen());
            ps.setInt(3, lichHen.getKhachHang().getId());
            if (ps.executeUpdate() != 1) {
                return false;
            }
            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    lichHen.setId(rs.getInt(1));
                    return true;
                }
            }
        }
        return false;
    }


}

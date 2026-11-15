package backend.dao;

import backend.entity.ServiceDetail8;
import backend.entity.ServiceRequestReceipt8;
import java.sql.*;

public class ServiceRequestReceipt8DAO extends DAO {
    public ServiceRequestReceipt8DAO() throws Exception{
        super();
    }
    public boolean taoPhieuYeuCau(ServiceRequestReceipt8 phieu) throws SQLException{
        int idPhieu;
        ServiceDetail8[] danhSach = phieu.getDsChiTietDichVu();
        String sql = "INSERT INTO tblServiceRequestReceipt8(ngayLap , bienSoXe , loaiXe , moTa , tblAppointment8id) VALUES (? , ? , ? , ?, ?)";
        String sqlChiTiet = "INSERT INTO tblServiceDetail8 "
            + "(thanhTien, tblService8id, tblServiceRequestReceipt8id) "
            + "VALUES (?, ?, ?)";
        try (PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, phieu.getNgayLap());
            ps.setString(2, phieu.getBienSoXe());
            ps.setString(3, phieu.getLoaiXe());
            ps.setString(4, phieu.getMoTa());
            ps.setInt(5, phieu.getLichHen().getId());
            if (ps.executeUpdate() != 1) {
                throw new SQLException("Không tạo được phiếu");
            }
            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (!rs.next()) {
                    throw new SQLException("Không lấy được ID phiếu");
                }
                idPhieu = rs.getInt(1);
            }
        }
        
        PreparedStatement hmm = con.prepareStatement(sqlChiTiet);
            for(ServiceDetail8 ct : danhSach){
                hmm.setInt(1, ct.getThanhTien());
                hmm.setInt(2, ct.getDv().getId());
                hmm.setInt(3, idPhieu);
                hmm.executeUpdate();
        }
        phieu.setId(idPhieu);
        return true;
    }
}

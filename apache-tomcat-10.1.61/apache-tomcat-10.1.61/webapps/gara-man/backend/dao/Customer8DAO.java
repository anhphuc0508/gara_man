package backend.dao;

import backend.entity.Customer8;
import java.sql.*;



public class Customer8DAO extends DAO {
    public Customer8DAO() throws Exception{
        super();
    }
    public Customer8 getKhachHang(int idKH) throws SQLException{
        String sql = "SELECT c.id , m.hoTen, m.SDT, m.email "
                   + "FROM tblCustomer8 c "
                   + "JOIN tblMember8 m ON c.tblMember8id = m.id "
                   + "WHERE c.id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        
        ps.setInt(1, idKH);
        try (ResultSet rs = ps.executeQuery()){
            rs.next();
            Customer8 khachHang = new Customer8();
            khachHang.setId(rs.getInt("id"));
            khachHang.setHoTen(rs.getString("hoTen"));
            khachHang.setSDT(rs.getString("SDT"));
            khachHang.setEmail(rs.getString("email"));
            return khachHang;
        }
        
    }
}

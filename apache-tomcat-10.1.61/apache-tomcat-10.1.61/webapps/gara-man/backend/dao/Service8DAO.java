package backend.dao;

import backend.entity.Service8;
import java.sql.*;
import java.util.ArrayList;

public class Service8DAO extends DAO {

    public Service8DAO() throws Exception {
        super();
    }

    public ArrayList<Service8> getDichVu() throws SQLException {
        String sql = "SELECT * FROM tblService8";
        ArrayList<Service8> arr = new ArrayList<>();
        PreparedStatement ps = con.prepareStatement(sql);

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Service8 dichVu = new Service8();
                dichVu.setId(rs.getInt("id"));
                dichVu.setDonGia(rs.getInt("donGia"));
                dichVu.setMaDV(rs.getString("maDV"));
                dichVu.setTenDV(rs.getString("tenDV"));
                arr.add(dichVu);

            }

        }
        return arr;
    }
    
}

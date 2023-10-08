/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accessDB;

import basicObject.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mylib.DBUtils;

/**
 *
 * @author nguyenphuocthienan
 */
public class UsersDAO {

    public Users checkLogin(String nameLog, String passwordLog) {
        Users u = null;
        try {
            Connection cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select [userID], [fullName],[roleID], [password] from tblUsers\n"
                        + "where userID = ? AND password = ? COLLATE Latin1_General_CS_AS";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, nameLog);
                pst.setString(2, passwordLog);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String id = rs.getString("userid");
                        String fullname = rs.getString("fullName");
                        String roleID = rs.getString("roleID");
                        String password = rs.getString("password");
                        
                        u = new Users(roleID, fullname, roleID, password);
                    }
                    return u;
                }
            }
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public static void main(String[] args) {
        UsersDAO u = new UsersDAO();
        Users l = u.checkLogin("Hoa Doan", "1");
        System.out.println(l);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accessDB;

import basicObject.Foods;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import mylib.DBUtils;

/**
 *
 * @author nguyenphuocthienan
 */
public class FoodsDAO {

    public List<Foods> getAllFood() {
        List<Foods> list = new ArrayList<>();
        String sql = "select * from tblFoods";
        try {
            Connection cn = DBUtils.makeConnection();
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (cn != null) {
                while (rs.next()) {
                    Foods f = new Foods(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getInt(5), rs.getBoolean(6));
                    list.add(f);

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insertFoods(String id, String name, String description, String price, String cookingTime, String status) {
        String sql = "INSERT INTO tblFoods([id],[name],[description],[price],[cookingTime],[status])\n"
                + "VALUES (?,?,?,?,?,?)";
        try{
            Connection cn = DBUtils.makeConnection();
            PreparedStatement pst = cn.prepareStatement(sql);
            
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, description);
            pst.setString(4, price);
            pst.setString(5, cookingTime);
            pst.setString(6, status);
            pst.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
            
    }
    
    public static void main(String[] args) {
        FoodsDAO d  = new FoodsDAO();
//        List<Foods> l = d.getAllFood();
        d.insertFoods("F-007", "Pha Lau nuoc dua", "lo tai heo", "40000", "10", "1");
//        for(Foods foods : l){
//            System.out.println(foods);
//        }
        System.out.println(d);
    }
}

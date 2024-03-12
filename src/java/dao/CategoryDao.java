/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author thanh
 */
public class CategoryDao extends DBContext{
    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Category c = new Category();
                c.setID(rs.getInt("ID"));
                c.setName(rs.getString("Name"));
                categories.add(c);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
    
}

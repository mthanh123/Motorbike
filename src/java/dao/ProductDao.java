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
import model.Product;

/**
 *
 * @author thanh
 */
public class ProductDao extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList();
        String sql = "select * from Products";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setID(rs.getInt("ID"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("Description"));
                p.setPrice(rs.getInt("Price"));
                p.setImage(rs.getString("image"));
                Category c = new Category();
                c.setID(rs.getInt("ID"));
                p.setCategory(c);
                
                products.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return products;
    }
    
    
}

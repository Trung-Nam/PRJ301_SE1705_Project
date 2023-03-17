/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface ICategoryDAO {

    public List<Category> getAllCategorys() throws SQLException;

    public void addCategory(String categoryName) throws SQLException;

    public void editCategory(Category category) throws SQLException;

    public void deleteCategory(int categoryId) throws SQLException;

    public Category getById(int id) throws SQLException;
    
    public Category getByName(String name) throws SQLException;
    
    public List<String> getAllCategorysName() throws SQLException;
}

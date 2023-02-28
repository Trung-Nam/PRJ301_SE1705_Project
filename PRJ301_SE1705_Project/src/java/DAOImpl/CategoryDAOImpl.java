/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.ICategoryDAO;
import Model.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class CategoryDAOImpl extends DBContext implements ICategoryDAO {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	@Override
	public List<Category> getAllCategorys() throws SQLException {
		// TODO Auto-generated method stub
		List<Category> cate = new ArrayList<>();
		String sql = "SELECT *FROM category";
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Category cates = new Category();
				cates.setCategoryId(resultSet.getInt("category_id"));
				cates.setCategoryName(resultSet.getString("category_name"));
				cate.add(cates);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(connection, preparedStatement, resultSet);
		}
		return cate;
	}

	@Override
	public void addCategory(String categoryName) throws SQLException {
		// TODO Auto-generated method stub
		String sql ="INSERT INTO category (category_name) VALUES (?)";
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, categoryName);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(connection, preparedStatement, resultSet);
		}

	}

	@Override
	public void editCategory(Category category) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "UPDATE category SET category_name = ? WHERE category_id = ?; ";
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, category.getCategoryName());
			preparedStatement.setInt(2, category.getCategoryId());
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(connection, preparedStatement, resultSet);
		}

	}

	@Override
	public void deleteCategory(int categoryId) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM category WHERE category_id = ?";
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, categoryId);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(connection, preparedStatement, resultSet);
		}

	}

	@Override
	public Category getById(int id) throws SQLException {
		Category category = null;
		String sql = "SELECT * FROM category where category_id = ?";
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				category = new Category();
				category.setCategoryId(resultSet.getInt("category_id"));
				category.setCategoryName(resultSet.getString("category_name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(connection, preparedStatement, resultSet);
		}
		return category;

	}

	public static void main(String[] args) {
		ICategoryDAO dao = new CategoryDAOImpl();
		try {
//			dao.addCategory("drama");
//			dao.addCategory("romance");
//			dao.editCategory(new Category(1, "School life"));
			dao.deleteCategory(2);
			System.out.println(dao.getAllCategorys());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IAuthorDAO;
import Model.Author;
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
public class AuthorDAOImpl extends DBContext implements IAuthorDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    @Override
    public List<Author> getAllAuthors() throws SQLException {
        // TODO Auto-generated method stub
        List<Author> author = new ArrayList<>();
        String sql = "SELECT * FROM author";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Author au = new Author();
                au.setAuthorId(resultSet.getInt("author_id"));
                au.setAuthorName(resultSet.getString("author_name"));
                au.setDescription(resultSet.getString("description"));
                author.add(au);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }

        return author;
    }

    @Override
    public void addAuthor(String authorName, String description) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO author (author_name, description) VALUES (?,?)";

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, authorName);
            preparedStatement.setString(2, description);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }

    }

    @Override
    public void editAuthor(Author author) throws SQLException {
        // TODO Auto-generated method stub
        String sql = " UPDATE author\n"
                + "SET author_name = ?, description = ? WHERE author_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, author.getAuthorName());
            preparedStatement.setString(2, author.getDescription());
            preparedStatement.setInt(3, author.getAuthorId());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void deleteAuthor(int authorId) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "DELETE FROM author WHERE author_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, authorId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public Author getById(int id) throws SQLException {
        Author author = null;
        String sql = "SELECT * FROM author where author_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                author = new Author();
                author.setAuthorId(resultSet.getInt("author_id"));
                author.setAuthorName(resultSet.getString("author_name"));
                author.setDescription(resultSet.getString("description"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return author;
    }

    public static void main(String[] args) {
        IAuthorDAO dao = new AuthorDAOImpl();
        try {
//			dao.addAuthor("Trung Nam ", "Best author in Year");
//			System.out.println(dao.getAllAuthors());
//			dao.editAuthor(new Author(1, "Hoang Toan", "Poor author"));
            dao.deleteAuthor(1);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IBookCaseDAO;
import DAO.IUserDAO;
import Model.BookCase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS G731G
 */
public class BookCaseDAOImpl extends DBContext implements IBookCaseDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    IUserDAO iUserDAO = new UserDAOImpl();

    @Override
    public void addBookCase(String bookCaseName, int userId) throws SQLException {
        String sql = "INSERT INTO book_case (book_case_name, user_id) VALUES (?, ?)";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bookCaseName);
            preparedStatement.setInt(2, userId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public BookCase getBookCaseByUserId(int userId) throws SQLException {
        BookCase bookCase = null;
        String sql = "select * from book_case where user_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                bookCase = new BookCase(resultSet.getInt("book_case_id"), resultSet.getString("book_case_name"), iUserDAO.getByUserId(resultSet.getInt("user_id")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return bookCase;
    }

}

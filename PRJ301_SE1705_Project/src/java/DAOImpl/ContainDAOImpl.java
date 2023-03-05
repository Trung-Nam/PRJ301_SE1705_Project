/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IBookDAO;
import DAO.IContainDAO;
import Model.Contain;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS G731G
 */
public class ContainDAOImpl extends DBContext implements IContainDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    IBookDAO iBookDAO = new BookDAOImpl();

    @Override
    public void addContain(int bookCaseId, int bookId) throws SQLException {
        String sql = "Insert into contain (book_case_id,book_id, create_date) VALUES (?,?, GETDATE())";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, bookCaseId);
            preparedStatement.setInt(2, bookId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void deleteContain(int bookId, int bookCaseId) throws SQLException {
        String sql = "delete from contain where book_id = ? and book_case_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, bookId);
            preparedStatement.setInt(2, bookCaseId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public List<Contain> listPaging(List<Contain> a, int start, int end) throws SQLException {
        List<Contain> pageList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            pageList.add(a.get(i));
        }
        return pageList;
    }

    @Override
    public List<Contain> getContainByBookCase(int bookCaseId) throws SQLException {
        List<Contain> contains = new ArrayList<>();
        String Sql = "select * from contain where book_case_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(Sql);
            preparedStatement.setInt(1, bookCaseId);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Contain contain = new Contain();
                contain.setBookCaseId(resultSet.getInt("book_case_id"));
                contain.setBook(iBookDAO.getById(resultSet.getInt("book_id")));
                contain.setCreateDate(resultSet.getString("create_date"));
                contains.add(contain);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return contains;
    }

    @Override
    public List<Contain> getContainByBookName(String keyword) throws SQLException {
        List<Contain> contains = new ArrayList<>();
        String Sql = "SELECT c.book_case_id as book_case_id, c.book_id as book_id, c.create_date, b.book_title as title FROM contain c inner join book b \r\n"
                + "on c.book_id = b.book_id where b.book_title like ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(Sql);
            preparedStatement.setString(1, "%" + keyword + "%");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Contain contain = new Contain();
                contain.setBookCaseId(resultSet.getInt("book_case_id"));
                contain.setBook(iBookDAO.getById(resultSet.getInt("book_id")));
                contain.setCreateDate(resultSet.getString("create_date"));
                contains.add(contain);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return contains;
    }

    /**
     *
     * @param args
     * @throws SQLException
     */
    public static void main(String[] args) {
        try {
            IContainDAO iContainDAO = new ContainDAOImpl();
//            iContainDAO.addContain(1, 1);
//            System.out.println(iContainDAO.getContainByBookCase(1).size());
//            System.out.println(iContainDAO.getContainByBookName("i").size());
            iContainDAO.deleteContain(2, 5);
        } catch (SQLException ex) {
            Logger.getLogger(ContainDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

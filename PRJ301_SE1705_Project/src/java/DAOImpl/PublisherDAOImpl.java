/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IPublisherDAO;
import Model.Publisher;
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
public class PublisherDAOImpl extends DBContext implements IPublisherDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    @Override
    public List<Publisher> getAllPublishers() throws SQLException {
        // TODO Auto-generated method stub
        List<Publisher> pub = new ArrayList<>();
        String sql = " select *from publisher_HE151090";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Publisher pubs = new Publisher();
                pubs.setPublisherId(resultSet.getInt("publisher_id"));
                pubs.setPublisherName(resultSet.getString("publisher_name"));
                pubs.setDescription(resultSet.getString("description"));
                pub.add(pubs);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return pub;
    }

    @Override
    public void addPublisher(String publisher_name, String description) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO publisher_HE151090 (publisher_name, description) VALUES (?,?)";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, publisher_name);
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
    public void editPublisher(Publisher publisher) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "UPDATE publisher_HE151090\n"
                + "SET publisher_name = ?, description = ?\n"
                + "WHERE publisher_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, publisher.getPublisherName());
            preparedStatement.setString(2, publisher.getDescription());
            preparedStatement.setInt(3, publisher.getPublisherId());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void deletePublisher(int publisher_id) throws SQLException {
        // TODO Auto-generated method stub'
        String sql = "DELETE FROM publisher_HE151090 WHERE publisher_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, publisher_id);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public Publisher getById(int id) throws SQLException {
        Publisher publisher = null;
        String sql = " select * from publisher_HE151090 where publisher_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                publisher = new Publisher();
                publisher.setPublisherId(resultSet.getInt("publisher_id"));
                publisher.setPublisherName(resultSet.getString("publisher_name"));
                publisher.setDescription(resultSet.getString("description"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return publisher;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        IPublisherDAO dao = new PublisherDAOImpl();
        try {
//			dao.addPublisher("Be Tung", "Admin cua Author Nam");
//			dao.addPublisher("Be An", "Admin cua Author Toan");
//			System.out.println(dao.getAllPublishers());
//			dao.editPublisher(new Publisher(1, "Be Manh", "Be manh 12 tuoi"));
            dao.deletePublisher(1);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    public Publisher getByName(String name) throws SQLException {
        Publisher publisher = null;
        String sql = " select * from publisher_HE151090 where publisher_name = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                publisher = new Publisher();
                publisher.setPublisherId(resultSet.getInt("publisher_id"));
                publisher.setPublisherName(resultSet.getString("publisher_name"));
                publisher.setDescription(resultSet.getString("description"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return publisher;
    }

    @Override
    public List<String> getAllPublishersName() throws SQLException {
        List<String> list = new ArrayList<>();
        for (Publisher publisher : getAllPublishers()) {
            list.add(publisher.getPublisherName());
        }
        
        return list;
    }
}

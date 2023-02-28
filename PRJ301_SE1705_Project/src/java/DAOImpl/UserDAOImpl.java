/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IUserDAO;
import Model.User;
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
public class UserDAOImpl extends DBContext implements IUserDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    @Override
    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "select * from user ";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
                users.add(user);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return users;
    }

    @Override
    public void addUser(String full_name, String user_name, String password, String email) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO user (full_name,user_name, password,email) VALUES (?,?,?,?)";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, full_name);
            preparedStatement.setString(2, user_name);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, email);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void editUser(int id, String fullName) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "update user set full_name = ? where user_id = ?";

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, fullName);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void deleteUser(int id) throws SQLException {
        // TODO Auto-generated method stub

    }

    @Override
    public User getByUserId(int id) throws SQLException {
        User user = null;
        String sql = "select * from user where user_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return user;
    }

    @Override
    public List<User> searchByKeyword(String keyword) throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "select * from user where email like ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + keyword + "%");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
                users.add(user);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return users;
    }

    @Override
    public User getUserByUsernameAndPassword(String user_name, String password) throws SQLException {
        User user = null;
        String sql = "SELECT * FROM [user] WHERE user_name = ? and password = ? ";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user_name);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return user;
    }

    @Override
    public User getUserByEmail(String email) throws SQLException {
        // TODO Auto-generated method stub
        User user = null;
        String sql = "select * from user where email = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return user;
    }

    @Override
    public List<User> listToPage(List<User> users, int start, int end) {
        List<User> pageList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            pageList.add(users.get(i));
        }
        return pageList;
    }

    @Override
    public void changePassword(int id, String password) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "update user set password = ? where user_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, password);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        IUserDAO dao = new UserDAOImpl();
        try {
            dao.addUser("Hoang Thi Nhung", "Nguyen Nhung", "mai123456", "nguyenNhung232@gmail.com");
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}

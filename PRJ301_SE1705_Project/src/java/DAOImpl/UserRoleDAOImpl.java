/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IUserRoleDAO;
import Model.UserRole;
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
public class UserRoleDAOImpl extends DBContext implements IUserRoleDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    @Override
    public List<UserRole> getAllUserRoles() throws SQLException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void addUserRole(int userId, int roleId) throws SQLException {
        String sql = "INSERT INTO user_role (user_id,role_id, created_date) VALUES (?,?,current_date())";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, roleId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }

    }

    @Override
    public void editUserRole(UserRole userRole) throws SQLException {
        // TODO Auto-generated method stub

    }

    @Override
    public void deleteUserRole(int user_id) throws SQLException {
        // TODO Auto-generated method stub

    }

    @Override
    public List<UserRole> getByUserId(int userId) throws SQLException {
        List<UserRole> userRoles = new ArrayList<>();
        String sql = "SELECT * FROM user_role WHERE user_id = ? ";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                UserRole userRole = new UserRole();
                userRole.setUserId(resultSet.getInt("user_id"));
                userRole.setRoleId(resultSet.getInt("role_id"));
                userRole.setCreatedDate(resultSet.getString("created_date"));
                userRoles.add(userRole);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return userRoles;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
    }

}

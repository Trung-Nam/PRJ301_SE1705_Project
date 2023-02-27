/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IUserDAO {

    public List<User> getAllUsers() throws SQLException;

    public void addUser(String full_name, String user_name, String password, String email) throws SQLException;

    public void editUser(int id, String fullName) throws SQLException;

    public void deleteUser(int id) throws SQLException;

    public User getByUserId(int id) throws SQLException;

    public List<User> searchByKeyword(String keyword) throws SQLException;

    public User getUserByUsernameAndPassword(String user_name, String password) throws SQLException;

    public User getUserByEmail(String email) throws SQLException;

    public List<User> listToPage(List<User> users, int start, int end);

    public void changePassword(int id, String password) throws SQLException;

}

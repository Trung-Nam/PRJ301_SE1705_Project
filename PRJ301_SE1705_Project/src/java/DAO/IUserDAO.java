/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Question;
import Model.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IUserDAO {

    public ArrayList<User> getAllUsers() throws SQLException;

    public void addUser(String full_name, String user_name, String password, String email, int question_id,String answer) throws SQLException;

    public void editUser(int id, String fullName) throws SQLException;

    public void deleteUser(int id) throws SQLException;

    public User getByUserId(int id) throws SQLException;

    public List<User> searchByKeyword(String keyword) throws SQLException;

    public User getUserByUsernameAndPassword(String user_name, String password) throws SQLException;

    public User getUserByEmail(String email) throws SQLException;

    public List<User> listToPage(List<User> users, int start, int end);

    public void changePassword(int id, String password) throws SQLException;

    public ArrayList<Question> getAllQuestions() throws SQLException;
    
    public User findUserByUserNameAndQuestionWithAnswer(String username,String question_id,String answer);
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IUserDAO;
import Model.Question;
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
    public ArrayList<User> getAllUsers() throws SQLException {
        ArrayList<User> users = new ArrayList<>();
        String sql = "select * from user_HE151090 ";
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
    public void addUser(String full_name, String user_name, String password, String email, int question_id, String answer) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO user_HE151090 (full_name,user_name, password,email,question_id,answer) VALUES (?,?,?,?,?,?)";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, full_name);
            preparedStatement.setString(2, user_name);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, email);
            preparedStatement.setInt(5, question_id);
            preparedStatement.setString(6, answer);
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
        String sql = "update user_HE151090 set full_name = ? where user_id = ?";

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
        String sql = "select * from user_HE151090 where user_id = ?";
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
        String sql = "select * from user_HE151090 where email like ?";
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
        String sql = "SELECT * FROM user_HE151090 WHERE user_name = ? and password = ? ";
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
        String sql = "select * from user_HE151090 where email = ?";
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
        String sql = "update user_HE151090 set password = ? where user_id = ?";
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

    @Override
    public ArrayList<Question> getAllQuestions() throws SQLException {
        ArrayList<Question> questions = new ArrayList<>();
        String sql = "select * from question_HE151090";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Question q = new Question();
                q.setQuestion_id(resultSet.getInt(1));
                q.setQuestion(resultSet.getString(2));
                questions.add(q);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return questions;
    }

    @Override
    public User findUserByUserNameAndQuestionWithAnswer(String username, String question_id, String answer) {
        User user = null;
        String sql = "SELECT * FROM user_HE151090 WHERE user_name = ? and question_id = ? and answer = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, question_id);
            preparedStatement.setString(3, answer);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new User();
                user.setUserId(resultSet.getInt("user_id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                user.setUsername(resultSet.getString("user_name"));
                user.setEmail(resultSet.getString("email"));
                Question q = new Question();
                q.setQuestion_id(resultSet.getInt("question_id"));
                user.setQuestion(q);
                user.setAnswer(resultSet.getString("answer"));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return user;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        IUserDAO dao = new UserDAOImpl();
        //            dao.addUser("Hoang Thi Nhung", "Nguyen Nhung", "mai123456", "nguyenNhung232@gmail.com");
//            for (Question q : dao.getAllQuestions()) {
//                System.out.println(q.toString());
//            }
        User u = dao.findUserByUserNameAndQuestionWithAnswer("mra", "1", "Ca si");
        System.out.println(u.toString());
    }

}

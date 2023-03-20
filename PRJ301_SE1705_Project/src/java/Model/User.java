/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class User {
    private int userId;
    private String fullName;
    private String username;
    private String password;
    private String email;
    private Question question;
    private String answer;

    public User() {
    }

    public User(int userId, String fullName, String username, String password, String email, Question question, String answer) {
        this.userId = userId;
        this.fullName = fullName;
        this.username = username;
        this.password = password;
        this.email = email;
        this.question = question;
        this.answer = answer;
    }

    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", fullName=" + fullName + ", username=" + username + ", password=" + password + ", email=" + email + '}';
    }
    
    
}

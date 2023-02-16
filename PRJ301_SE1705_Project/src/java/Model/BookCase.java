/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class BookCase {

    private int bookCaseId;
    private String bookCaseName;
    private User user;

    public BookCase() {
    }

    public BookCase(int bookCaseId, String bookCaseName, User user) {
        this.bookCaseId = bookCaseId;
        this.bookCaseName = bookCaseName;
        this.user = user;
    }

    public int getBookCaseId() {
        return bookCaseId;
    }

    public void setBookCaseId(int bookCaseId) {
        this.bookCaseId = bookCaseId;
    }

    public String getBookCaseName() {
        return bookCaseName;
    }

    public void setBookCaseName(String bookCaseName) {
        this.bookCaseName = bookCaseName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "BookCase{" + "bookCaseId=" + bookCaseId + ", bookCaseName=" + bookCaseName + ", user=" + user + '}';
    }

}

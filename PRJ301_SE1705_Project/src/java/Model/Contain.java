/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Contain {
    	private int bookCaseId;
	private Book book;
	private String createDate;

    public Contain() {
    }

    public Contain(int bookCaseId, Book book, String createDate) {
        this.bookCaseId = bookCaseId;
        this.book = book;
        this.createDate = createDate;
    }

    public int getBookCaseId() {
        return bookCaseId;
    }

    public void setBookCaseId(int bookCaseId) {
        this.bookCaseId = bookCaseId;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Contain{" + "bookCaseId=" + bookCaseId + ", book=" + book + ", createDate=" + createDate + '}';
    }
        
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Author;
import Model.Book;
import Model.Category;
import Model.Publisher;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IBookDAO {

    public List<Book> getAllBooks() throws SQLException;

    public void addBook(String bookTitle, int authorId, String brief, int publisherId, int categoryId, String image, String content, int readCount) throws SQLException;

    public void editBook(int bookId, String bookTitle, int authorId, String brief, int publisherId, int categoryId, String image) throws SQLException;

    public void deleteBook(int bookId) throws SQLException;

    public Book getById(int id) throws SQLException;

    public List<Book> getByFilter(List<Author> a, List<Publisher> p, List<Category> c, String bookName) throws SQLException;

    public List<Book> listToPage(List<Book> books, int start, int end);

    public List<Book> getByCategories(int categoryId) throws SQLException;

    public List<Book> getTopBookByColumn(int topNum, String column) throws SQLException;

}

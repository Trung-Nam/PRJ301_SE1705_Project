/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Author;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IAuthorDAO {

    public List<Author> getAllAuthors() throws SQLException;

    public void addAuthor(String authorName, String description) throws SQLException;

    public void editAuthor(Author author) throws SQLException;

    public void deleteAuthor(int authorId) throws SQLException;

    public Author getById(int id) throws SQLException;

    public Author getByName(String name) throws SQLException;
    
    public List<String> getAllAuthorsName() throws SQLException;
}

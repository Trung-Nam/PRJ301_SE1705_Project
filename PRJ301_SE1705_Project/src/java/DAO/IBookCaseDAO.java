/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.BookCase;
import java.sql.SQLException;

/**
 *
 * @author ASUS G731G
 */
public interface IBookCaseDAO {

    public void addBookCase(String bookCaseName, int userId) throws SQLException;

    public BookCase getBookCaseByUserId(int userId) throws SQLException;

}

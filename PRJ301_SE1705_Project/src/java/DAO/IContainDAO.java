/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Contain;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface IContainDAO {

    public List<Contain> listPaging(List<Contain> a, int start, int end) throws SQLException;

    public void addContain(int bookCaseId, int bookId) throws SQLException;

    public void deleteContain(int bookId, int bookCaseId) throws SQLException;

    public List<Contain> getContainByBookCase(int bookCaseId) throws SQLException;

    public List<Contain> getContainByBookName(String keyword) throws SQLException;
}

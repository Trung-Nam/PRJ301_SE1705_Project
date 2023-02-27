/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Comment;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public interface ICommentDAO {

    public List<Comment> getAllComments() throws SQLException;

    public void addComment(String content, int voteStar, int userId, int bookId) throws SQLException;

    public void editComment(Comment comment) throws SQLException;

    public void deleteComment(int commentId) throws SQLException;
}

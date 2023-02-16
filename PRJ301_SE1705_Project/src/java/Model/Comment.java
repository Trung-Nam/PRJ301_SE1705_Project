/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Comment {

    private int commentId;
    private String content;
    private int voteStar;
    private int userId;
    private int bookId;

    public Comment() {
    }

    public Comment(int commentId, String content, int voteStar, int userId, int bookId) {
        this.commentId = commentId;
        this.content = content;
        this.voteStar = voteStar;
        this.userId = userId;
        this.bookId = bookId;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getVoteStar() {
        return voteStar;
    }

    public void setVoteStar(int voteStar) {
        this.voteStar = voteStar;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    @Override
    public String toString() {
        return "Comment{" + "commentId=" + commentId + ", content=" + content + ", voteStar=" + voteStar + ", userId=" + userId + ", bookId=" + bookId + '}';
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Book {

    private int bookId;
    private String bookTitle;
    private Author author;
    private String brief;
    private Publisher publisher;
    private Category category;
    private String image;
    private String content;
    private int readCount;

    public Book() {
    }

    public Book(int bookId, String bookTitle, Author author, String brief, Publisher publisher, Category category, String image, String content, int readCount) {
        this.bookId = bookId;
        this.bookTitle = bookTitle;
        this.author = author;
        this.brief = brief;
        this.publisher = publisher;
        this.category = category;
        this.image = image;
        this.content = content;
        this.readCount = readCount;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    @Override
    public String toString() {
        return "Book{" + "bookId=" + bookId + ", bookTitle=" + bookTitle + ", author=" + author + ", brief=" + brief + ", publisher=" + publisher + ", category=" + category + ", image=" + image + ", content=" + content + ", readCount=" + readCount + '}';
    }
    
    
}

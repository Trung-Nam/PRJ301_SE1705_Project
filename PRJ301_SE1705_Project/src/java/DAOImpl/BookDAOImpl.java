/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOImpl;

import DAO.DBContext;
import DAO.IBookDAO;
import Model.Author;
import Model.Book;
import Model.Category;
import Model.Publisher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class BookDAOImpl extends DBContext implements IBookDAO {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    PublisherDAOImpl publisherDAO = new PublisherDAOImpl();
    CategoryDAOImpl categoryDAO = new CategoryDAOImpl();
    AuthorDAOImpl authorDAO = new AuthorDAOImpl();

    @Override
    public List<Book> getAllBooks() throws SQLException {
        // TODO Auto-generated method stub
        List<Book> list = new ArrayList<>();

        String sql = " SELECT *FROM book";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Book book = new Book();
                book.setBookId(resultSet.getInt("book_id"));
                book.setBookTitle(resultSet.getString("book_title"));
                book.setAuthor(authorDAO.getById(resultSet.getInt("author_id")));
                book.setBrief(resultSet.getString("brief"));
                book.setPublisher(publisherDAO.getById(resultSet.getInt("publisher_id")));
                book.setCategory(categoryDAO.getById(resultSet.getInt("category_id")));
                book.setImage(resultSet.getString("img"));
                book.setContent(resultSet.getString("content"));
                book.setReadCount(resultSet.getInt("read_count"));
                list.add(book);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return list;
    }

    @Override
    public void addBook(String bookTitle, int authorId, String brief, int publisherId, int categoryId, String image,
            String content, int readCount) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO book(book_title,author_id,brief,publisher_id,category_id,img,content,read_count) VALUES (?,?,?,?,?,?,?,?)";

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bookTitle);
            preparedStatement.setInt(2, authorId);
            preparedStatement.setString(3, brief);
            preparedStatement.setInt(4, publisherId);
            preparedStatement.setInt(5, categoryId);
            preparedStatement.setString(6, image);
            preparedStatement.setString(7, content);
            preparedStatement.setInt(8, readCount);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void editBook(int bookId, String bookTitle, int authorId, String brief, int publisherId, int categoryId, String image) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "UPDATE book\n"
                + "SET\n"
                + "book_title = ?,\n"
                + "author_id =  ?,\n"
                + "brief = ?,\n"
                + "publisher_id = ?,\n"
                + "category_id =? ,\n"
                + "img = ?\n"
                + "WHERE book_id = ?";

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, bookTitle);
            preparedStatement.setInt(2, authorId);
            preparedStatement.setString(3, brief);
            preparedStatement.setInt(4, publisherId);
            preparedStatement.setInt(5, categoryId);
            preparedStatement.setString(6, image);
            preparedStatement.setInt(7, bookId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public void deleteBook(int bookId) throws SQLException {
        // TODO Auto-generated method stub
        String sql = "DELETE FROM book\n"
                + "WHERE book_id = ? ";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, bookId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
    }

    @Override
    public Book getById(int id) throws SQLException {
        Book book = null;
        String sql = "select * from book where book_id = ?";

        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                book = new Book();
                book.setBookId(resultSet.getInt("book_id"));
                book.setBookTitle(resultSet.getString("book_title"));
                book.setAuthor(authorDAO.getById(resultSet.getInt("author_id")));
                book.setBrief(resultSet.getString("brief"));
                book.setPublisher(publisherDAO.getById(resultSet.getInt("publisher_id")));
                book.setCategory(categoryDAO.getById(resultSet.getInt("category_id")));
                book.setImage(resultSet.getString("img"));
                book.setContent(resultSet.getString("content"));
                book.setReadCount(resultSet.getInt("read_count"));
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return book;
    }

    @Override
    public List<Book> getByFilter(List<Author> a1, List<Publisher> p1, List<Category> c1, String bookName)
            throws SQLException {
        // TODO Auto-generated method stub
        String sql = "SELECT b.book_id,b.book_title,b.author_id,b.brief,b.publisher_id,b.category_id,b.img,b.content,b.read_count,\n"
                + "a.author_name AS authorName,a.description as authorDescription , c.category_name as categoryName, p.publisher_name AS publisherName,p.description as publisherDescription FROM BOOK b\n"
                + "INNER JOIN author a ON a.author_id = b.author_id\n"
                + "INNER JOIN category c ON c.category_id = b.category_id\n"
                + "INNER JOIN publisher p ON p.publisher_id = b.publisher_id\n"
                + "where 1=1";

        List<Book> list = new ArrayList<>();
        if (!a1.isEmpty()) {
            sql += " and ( 0=1";
            for (Author a : a1) {
                sql += " or a.author_id = " + a.getAuthorId();
            }
            sql += " )";
        }
        if (!p1.isEmpty()) {
            sql += " and ( 0=1";
            for (Publisher p : p1) {
                sql += " or p.publisher_id = " + p.getPublisherId();
            }
            sql += " )";
        }
        if (!c1.isEmpty()) {
            sql += " and ( 0=1";
            for (Category c : c1) {
                sql += " or c.category_id = " + c.getCategoryId();
            }
            sql += " )";
        }
        if (bookName != null) {
            sql += " and b.book_title like N'%" + bookName + "%'";
        }
        try {
            connection = getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Book book = new Book();
                book.setBookId(rs.getInt("book_id"));
                book.setBookTitle(rs.getString("book_title"));
                book.setAuthor(new Author(rs.getInt("author_id"), rs.getString("authorName"), rs.getString("authorDescription")));
                book.setBrief(rs.getString("brief"));
                book.setPublisher(new Publisher(rs.getInt("publisher_id"), rs.getString("publisherName"), rs.getString("publisherDescription")));
                book.setCategory(new Category(rs.getInt("category_id"), rs.getString("categoryName")));
                book.setImage(rs.getString("img"));
                book.setContent(rs.getString("content"));
                book.setReadCount(rs.getInt("read_count"));
                list.add(book);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    @Override
    public List<Book> listToPage(List<Book> books, int start, int end) {
        // TODO Auto-generated method stub
        List<Book> pageList = new ArrayList<>();
        for (int i = start; i < end; i++) {
            pageList.add(books.get(i));
        }
        return pageList;
    }

    @Override
    public List<Book> getByCategories(int categoryId) throws SQLException {
        List<Book> list = new ArrayList<>();

        String sql = "SELECT *FROM book where category_id = ?";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, categoryId);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Book book = new Book();
                book.setBookId(resultSet.getInt("book_id"));
                book.setBookTitle(resultSet.getString("book_title"));
                book.setAuthor(authorDAO.getById(resultSet.getInt("author_id")));
                book.setBrief(resultSet.getString("brief"));
                book.setPublisher(publisherDAO.getById(resultSet.getInt("publisher_id")));
                book.setCategory(categoryDAO.getById(resultSet.getInt("category_id")));
                book.setImage(resultSet.getString("img"));
                book.setContent(resultSet.getString("content"));
                book.setReadCount(resultSet.getInt("read_count"));
                list.add(book);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return list;
    }

    @Override
    public List<Book> getTopBookByColumn(int topNum, String column) throws SQLException {
        List<Book> list = new ArrayList<>();
        String sql = "SELECT TOP(" + topNum + ") * FROM book order by " + column + " DESC";
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Book book = new Book();
                book.setBookId(resultSet.getInt("book_id"));
                book.setBookTitle(resultSet.getString("book_title"));
                book.setAuthor(authorDAO.getById(resultSet.getInt("author_id")));
                book.setBrief(resultSet.getString("brief"));
                book.setPublisher(publisherDAO.getById(resultSet.getInt("publisher_id")));
                book.setCategory(categoryDAO.getById(resultSet.getInt("category_id")));
                book.setImage(resultSet.getString("img"));
                book.setContent(resultSet.getString("content"));
                book.setReadCount(resultSet.getInt("read_count"));
                list.add(book);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            closeConnection(connection, preparedStatement, resultSet);
        }
        return list;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        IBookDAO dao = new BookDAOImpl();
//		try {
//			//dao.addBook("Pha Nha", 2, "Cac con pao", 2, 2, "Day la Anh", "Test", 3);
//			dao.editBook(3, "Hololive", 1, "djakljdlkasjd", 1, 1, "djadqiowjeoiqwjeowqi");
//
//			System.out.println(dao.getById(3));
//
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}

        List<Author> a = new ArrayList<>();
        List<Publisher> p = new ArrayList<>();
        List<Category> c = new ArrayList<>();
        String name = "t";

        try {
//            List<Book> books = dao.getTopBookByColumn(5, "book_id");
//            System.out.println(books.get(0).getCategory().getCategoryId() + " " + books.size());
//            System.out.println(dao.getByCategories(1).size());
               System.out.println(dao.getByFilter(a, p, c, name).get(0).getAuthor());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

import DAO.IBookDAO;
import DAO.ICategoryDAO;
import DAOImpl.BookDAOImpl;
import DAOImpl.CategoryDAOImpl;
import Model.Book;
import Model.Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("Home.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        IBookDAO iBookDAO = new BookDAOImpl();
        List<Book> books = null;
        ICategoryDAO iCategoryDAO = new CategoryDAOImpl();
        List<Category> categories = null;
        try {
            books = iBookDAO.getAllBooks();
            List<Book> books1 = iBookDAO.getByCategories(1);
            List<Book> books2 = iBookDAO.getByCategories(2);
            List<Book> books3 = iBookDAO.getByCategories(3);
            List<Book> books4 = iBookDAO.getByCategories(4);
            List<Book> books5 = iBookDAO.getByCategories(5);
            List<Book> newBooks = iBookDAO.getTopBookByColumn(3, "book_id");
            List<Book> popularBook = iBookDAO.getTopBookByColumn(1, "read_count");
            categories = iCategoryDAO.getAllCategorys();
            request.setAttribute("books1", books1);
            request.setAttribute("books2", books2);
            request.setAttribute("books3", books3);
            request.setAttribute("books4", books4);
            request.setAttribute("books5", books5);
            request.setAttribute("newBooks", newBooks);
            request.setAttribute("popularBook", popularBook);
            request.setAttribute("list", books);
            request.setAttribute("listC", categories);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        request.getRequestDispatcher("Home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
